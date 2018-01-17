# Views

A view (i.e. UIView subclass) represents a rectangular area

- Defines a coordinate space
- For drawing
- And for handling touch events

Hierachical

- A view has only one superview …

  ```swift
  var superview: UIView?
  ```

- But it can have many (or zero) subviews...

  ```swift
  var subviews: [UIView]
  ```

- The order in the subviews array matters: those later in the array are on top of those earlier.

- A view can clip its subviews to its own bounds or not(the default is not to)

  ​

UIWindow

- The UIView at the very, very top of the view hierachy(even includes status bar), Usually only one UIWindow in an entire iOS app… it is all about views, not windows.

The hierachy is most often constructed in Xcode graphically

But it can be done in code as well

``` swift
func addSubview(_ view: UIView) // sent to view's superview
func removeFromSuperview() // sent to the view you want to remove
```

Where does the view hierachy start?

- The top of the view hierachy is the Controller's 

  ``` swift
  var view: UIView
  ```

- This simple property is a very important thing to understand

- This view is the one whose bounds will change on rotation, for example.

- This view is likely the one you will programmatically add subviews to 

- All of your MVC's View's UIViews will have this view as an ancestor

- It is automatically hooked up for you when you create an MVC in Xcode.

### Initializing a UIView

As always, try to avoid an initializer if possible.

But having one in UIView is slightly more common than having a UIViewController initializer 

A UIView's initializer is different if it comes out of a storyboard.

```swift
init(frame: CGRect) // initializer if the UIView is created in code
init(coder: NSCoder) //initializer if the UIView comes out of a storyboard
```

If you need an initializer, implement them both..

``` swift
func setup() {...}
override init(frame: CGRect) {
  super.init(frame: frame)
  setup()
}
required init?(coder aDecoder: NSCoder) {
  super.init(coder: aDecoder)
  setup()
}
```

Another alternative to initalizer in UIView ..

```swift
awakeFromNib() // this is only called if the UIView came out a storyboard. 
```

This is not an initializer. All objects that inherit from NSObject in a storyboard are sent this. Order is not guaranteed, so you cannot message any other objects in the storyboard here. 

## Coordinate System Data Structures

CGFloat

- Always use this insteadf of Double or Float for anything to do wit a UIView's coordinate system. You can convert to/ from a Double or Float using initializer, e.g 

  ``` swift
  let cgf = CGFloat(aDouble)
  ```


CGRect

- A struct with a CGPoint and a CGSize in it..

``` swift
struct CGRect {
  var origin: CGPoint
  var size: CGSize
}

let rect = CGRect(origin: aCGPoint, size: aCGSize) // there are other inits as well

var minX: CGFloat //left edge
var midY: CGFloat // midpoint vertically
intersects(CGRect) -> Bool // does this CGRect intersect this other one?
intersect(CGRect) //clip the CGRect to the intersection with the other one.
contains(CGPoint) -> Bool // does this CGRect contain the given CGPoint?
```

… and many more (make yourself a CGRect and type. after it to see more)



## View Coordinate System

Origin is upper left

Units are points, not pixels

- Pixels are the minimum-sized unit of drawing your device is capable of
- Points are the units in the coordinate system.
- Most of the time there are 2 pixels per point, but it could be only 1 or even 3
- How many pixels per point are there? UIView's var contentScaleFactor: CGFloat

The boundaries of where drawing happens.

- var bounds: CGRect // a view's internal drawing spaces' origin and size.
- This is the rectangle containing the drawing space in its own coordinate system. 
- It is up to your view's implmentation to interpret what bounds. origin mean (often nothing.)

Where is the UIView?

```swift
var center: CGPoint // the center of a UIView in its superview's coordinate system
var frame: CGRect // the rect containing a UIView in its superview's coordinate system
```



## Bounds vs frame

Use frame and/ or center to position a UIView

- there are never used to draw inside a view's coordinate system.
- You might think frame.size is always equal to bounds.size, but you'd be wrong

## Creating Views

Most often your views are created via your storyboard.

- Xcodes' Object Palette has a generic UIView you can drag out
- After you do that, you must use the Identitiy Inspector to changes its class to your subclass.

On occasion, you will create a UIView via code

- You can use the frame initializer …

``` swift
 let newView = UIView(frame: myViewFrame)
let newView = UIView()
```

Example

```swift
let labelRect = CGRect(x: 20, y: 20, width: 100, height: 50)
let label = UILabel(frame: labelRect)// UILabel is a subclass of UIView
label.text = "Hello"
view.addSubview(label)
```

## Custom View

When would I create my own UIView subclass?

- I want to do something custom drawing on screen
- I need to handle touch events in a special way

To draw, just create a UIView subclass and override draw(CGRect)

``` swift
override func draw(_ rect: CGRect)
```

- You can draw outside the rect, but it is never required to do so.
- The rect is purely an optimization
- It is our UIView's bounds that describe the entire drawing area(the rect is a subarea)

Never call draw(CGRect) 

- Instead, if your view needs to be redreawn, let the system know that by calling ...

``` swift
setNeedsDisplay()
setNeedsDisplay(_ rect: CGRect) // rect is the area that needs to be redrawn
```

- iOS will tehn call your draw(CGRect) at an appropriate time

So how do I implement my draw(CGRect)?

- You can either get a drawing context and tell it what to draw, or ...
- You can create a path of drawing using UIBezierPath class

Core Graphics Concepts

1. You get a context to draw into(other contexts include priniting, off-screen buffer) The function UIGraphicsGetCurrentContext() gives a context you can use in draw(CGRect)
2. Create paths(out of lines, arcs)
3. Set drawing attributes like colors, fonts, textures, linewidths, linecaps, etc.
4. Stroke or fill the above-created paths with the given attributes

UIBezierPath

- Same aas above, but captures all the drawing with a UIBezierPath
- UIBezierPath automatically draws in the "current" context(preset up for you in draw(CGRect))
- UIBezierPath has methods to draw(lineto, arcs, etc) and to set attributes(line width, etc)
- Use UIColor to set stroke and fill colors
- UIBezierPath has methods to stroke and/or fill



## Defining a Path

Create a UIBezierPath

```swift
let path = UIBezierPath()
```

Move around, add lines or arcs to the path

``` swift
path.move(to: CGPoint(80, 50))
path.addLine(to: CGPoint(140, 150))
path.addLine(to: CGPoint(10, 150))
```

Close the path

```swif
path.close()
```

Now that you have a path, set attributes and stroke/fill

``` swift
UIColor.green.setFill() // note setFill is a method in UIColor, not UIBezierPath
UIColor.red.setStroke//note setStroke is a method in UIColor, not UIBezierPath
path.linewidth = 3.0
path.fill()
path.stroke()
```

### Drawing

You can also draw common shapes with UIBezierPath

``` swift
let roundedRect = UIBezierPath(roundedRect: CGRect, cornerRadius: CGFloat)
let oval = UIBezierPath(ovalIn: CGRect)
```

CLipping your drawing to a UIBezierPath's path

``` swift
addClip()
```

for exampe, you could clip to a rounded rect to enforce the edges of a playing card



## UIColor

colors are set using UIColor

- There are type vars for standard colors, e.g. 

``` swift
let green = UIColor.green
```

You can also create them from RGB, HSB or even a pattern(using UIImage)

Background color of a UIView

``` swift
var backgroundColor: UIColor // we used this for our Concentration buttons
```

