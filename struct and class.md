# Struct & Class
## Reference Type
- Similar to pointer in C

``` swift
let video = VideoMod()
video.name = "Original Video Instance"

print("video's instance name : \(video.name!)")
// video's instance name : Originam Video Instance.
```
``` swift
let dvd = video
dvd.name = "DVD Video Instance"
print("video's instance name : \(video.name!)")
```

``` swift
func changeName(v: VideoMode) {
    v.name = "Function Video Instance
}

changeName(v: Video)
print("video's instance name : \(vide.name!)")
```

``` swift
if (video === dvd) {
    print("video and dvd refer to the same instance")
} else {
    print("video and dvd refer to different instance")
}

let vs = VideoMode()
let ds = VideoMode()

if(vs === ds) {
    print("vs and ds refer to the same instnace")
} else {
    print("vs and ds refer to different instance")
}
```

## Property
- Store the value
- Instance Property, Type Property
- To monitor the property value, "Property Observer" is defined in swift

### Stored Property
- Initialized as nil (default)
- If inialized with value, it is not necessary to declare as an Optional type.

``` swift
class User {
    var name: String
}
//not initialized -> error
```
``` swift
class User {
    var name: String
    init() {
        self.name = "Daniel"
    }
}
```
- "self" keyword : property created inside of class is distinguished by "self"
``` swift
class User {
    var name: String?
} //or

class User {
    var name: String!
}
// change to Optional
```
- By using Optional, the system automatically initialize.

``` swift
// declaring by default value
class User {
    var name: String = ""
}
```
``` swift
struct FixedLengthRange {
    var startValue: Int
    let length: Int
}
// length can be changed
struct FlexibleLengthRange {
    let startValue: Int
    var length: Int
}

var rangeOfFixedIntegers = FixedLengthRange(startValue: 0, length: 3)

rangeOfFixedIntegers.startValue = 4
// Object instance -> 4,5,6
var rangeOfFlexibleIntegers = FlexibleLengthRange(startValue: 0, length: 3)
// struct instance -> 0,1,2
rangeOfFlexibleIntegers.length = 5
// Object Instance -> 0,1,2,3,4

//variable
var variablesOfInstance = FixedLengthRange(startValue: 3, Length: 4)
variablesOfInstance.startValue = 0

//constant
let constantsOfInstance = FixedLengthRange(startValue: 3, length: 4)
constantsOfInstance.startValue = 0 // X
```
### Lazy 
- Property with Lazy keyword would be declared but, not initialized. When the property would be called, then it would be initialized.

``` swift
class OnCreate {
    init() {
        print("On Create!")
    }
}

class LazyTest {
    var base = 0
    lazy var late = OnCreate()

    init() {
        print("lazy test")
    }
}

let lz = LazyTest()
//"lazy test"

lz.late
//"On Create!"
```
``` swift
let/var property: type = {
    return returnVal
}()
```
``` swift
class PropertyInit{
    //stored property - exectued when the instance would be created.
    var value1: String! = {
        print("valoue1 execute")
        return "value1:
    }()

    let value2 = String! = {
        print("value2 execute)
        return "value2"
    }
}

let s = PropertyInit()
//value1 execute
//value2 execute
```
``` swift
class PropertyInit{
    //...

    //only one time execute when refering the property

    lazy var val3: String! = {
        print("value3 execute")
        return "val3"
    }()
}
```
### Computed Property
- set, get
``` swift
class/struct/enum objectName {
    //...
    var propertyName : type {
        get {
            //...
            return returnValue
        }
        set(param) {
            //...
        }
    }
}
```
``` swift
//example code -> calculating age
import Foundation

struct UserInfo {
    //year
    var birth: Int!

    //this year
    var thisYear: Int! {
        get {
            let df = DateFormatter()
            df.dateFormat = "yyyy"
            return Int(df.string(from: Date()))
        }
    }
    //this year - birth year + 1
    var age: Int {
        get {
            return (self.thisYear - self.birth) + 1
        }
    }
}

let info = UserInfo(birth: 1992)
print(info.age)
```

``` swift
struct Rect {
    var originX: Double = 0.0, originY: Double = 0.0

    var sizeWidth: Double = 0.0, sizeHeight: Double = 0.0

    var centerX: Double {
        get{
            return self.originX + (sizeWidth / 2)
        }
        set(newCenterX) {
            originX = newCenterX - (sizeWidth / 2)
        }
    }

    var centerY: Double {
        get {
            return self.originY + (self.sizeHeight / 2)
        }
        set(newCenterY) {
            self.originY = newCenterY - (self.sizeHeight / 2)
        }
    }
}

var square = Rect(originX: 0.0, originY: 0.0, sizeWidth: 10.0, sizeHeight: 10.0)
print("square.centerX = \(square.centerX), square.centerY = \(square.centerY)")
```
- stored property: originX, originY, sizeWidth, sizeHeight
- computed Property: centerX, centerY

``` swift
struct Position {
    var x: Double = 0.0
    var y: Double = 0.0
}

struct Size {
    var width: Double = 0.0
    var height: Double = 0.0
}

struct Rect {
    var origin = Position()
    var size = Size()
    var center: Position {
        get {
            let centerX = self.origin.x + (self.size.width / 2)
            let centerY = self.origin.y + (self.size.height / 2)
            return Position(x: centerX, y: centerY)
        }
        set(newCenter) {
            self.origin.x = newCenter.x - (size.width / 2)
            self.origin.y = newCenter.y - (size.height / 2)
        }
    }
}
let p = Position(x: 0.0o, y: 0.0)
let s = Size(width: 10.0, height: 10.0)

var square = Rect(origin: p, size: s)
print("square.centerX = \(square.center.x), square.centerY = \(square.center.y)")
//square.centerX = 5.0, square.centerY = 5.0
```

### Property Observer
``` swift
struct Job {
    var income: Int = 0 {
        willSet(newIncome) {
            print("This month income : \(newIncome)")
        }
        didSet {
            if income ? oldValue {
                print("(income - oldValue) increased)
            } else {
                print("Your income decreased")
            }
        }
    }
}
```
### type property
``` swift
struct Foo {
    // store type property
    static var sFoo = "type property"
    //type operation property
    static var cFoo: Int{
        return 1
    }
}

class Boo {
    static var sFoo = "type property"
    static var cFoo: Int{
        return 10
    }
    class var oFoo: Int {
        return 100
    }
}
```
## Method 
### Instance Method
``` swift
struct Resolution {
    var width = 0
    var height = 0

    func desc() -> String {
        let desc = "\(self.width) X \(self.height)"
        return desc
    }
}

class VideoMode {
    var resolution = Resolution()
    var interlaced = false
    var frameRate = 0.0
    var name: String?
}
//Instance Method
func desc() -> String {
    if self.name != nil {
        let desc = "\(self.name!)'s video mode \(self.frameRate)"
        return desc
    } else {
        let desc = "\(self.frameRate)"
        return desc
    }
}
```
``` swift
struct Resolution {
    var width = 0
    var height = 0

    func judge() -> Bool {
        let width = 30
        return self.width == width
    } //false
}
```
``` swift
class Counter {
    var count = 0

    func increment() {
        self.count += 1
    }

    func incrementBy(amount: Int) {
        self.count += amount
    }

    func reset() {
        self.count = 0
    }
}

let counter = Counter()
counter.increment()
counter.incrementBy(amount: 5)
counter.reset()
```
``` swift
class Location {

    var x = 0.0, y = 0.0

    func moveByX(x deltaXL Double, y deltaY: Double) {
        self.x += deltaX
        self.y += deltaY
    }
}
var loc = Location()
loc.x = 10.5
loc.y = 12.0
loc.moveByX(x: 3.0, y: 4.5)

```

### Type Methods
- No instance needs to be created
``` swift
class Foo {
    class func fooTypeMethod() {

    }
}

let f = Foo()
f.fooTypeMethod()
Foo.fooTypeMethod()
```

## Inheritance
- Super Class 
- Sub Class 

``` swift
class A {
    var name = "Class A"

    var description: String {
        return "This class name is \(self.name)"
    }

    func foo() {
        print("\(self.name)'s method foo is called")
    }
}

let a = A()
a.name //"class A"
a.description //"THis class name is ~~"
a.foo()
//Class A's method foo is called
```

### Subclassing
- inherit the class and create a new class
``` swift
class <Name> : <Parent class> {
    //additional contents
}
```
``` swift
class B: A {
    var prop = "Class B"
    func boo() -> String {
        return "Class B prop = \(self.prop)"
    }
}
let b = B()
b.prop //"Class B"
b.boo() //Class B prop = Class B

b.name // "Class A"
b.foo() //"Class A's method foo is called"
b.name = "Class C"
b.foo() //"Class C's method foo is called"
```
``` swift
class Vehicle {
    var currentSpeed = 0.0

    var description: String {
        return "\(self.currentSpeed)"
    }

    func makeNosie() {
        //...
    }
}
```
``` swift
//create vehicle instance
let baseVehicle = Vehicle()
baseVehicle.description // current speed would be shown

class Bicycle: Vehicle {
    var hasBasket = false
}

let bicycle = Bicycle()
bicycle.hasBasket = true

bicycle.currentSpeed = 20.0
print("bicycle: \(bicycle.description)")
```
``` swift
class Tandem: Bicycle {
    var passenger = 0
}

let tandem = Tandem()
tandem.hasBasket = true
tandem.passengers = 2
tandem.currentSpeed = 14.0
```
``` swift
class Tandem {
    var currentSpeed = 0.0
    var hasBasket = false
    var passengers = 0

    var description: String {
        return"\(self.currentSpeed)"
    }

    func makeNosise() {

    }
}
```

## Overriding
``` swift
class Car: Vehicle {
    var gear = 0
    var engineLevel = 0

    ovedrride var currentSpeed: Double {
        get {
            return Double(self.engineLevel & 50)
        }
        set {
            //
        }
    }

    override var description: String{
        get {
            return "Car : engineLevel = \(self.engineLevel), so currentSpeed = \(self.currentSpeed)"
        }
        set {
            print("New Value is \(newValue)")
        }
    }
}

let c = Car ()
c.engineLevel = 5
c.currentSpeed // 250
c.description = "New Class Car"

print(c.description)
// New value is New Class Car
//Car : engineLevel = 5, so currentSpeed = 250.0
```
``` swift
class AutomaticCar: Car {
    override var currentSpeed: Double {
        didSet {
            self.gear = Int(currentSpeed / 10.0)
        }
    }
}
``` 
``` swift
class Bike: Vehicle {
    override func makeNoise() {
        print("bba")
    }
}
let bk = Bike()
bk.makeNoise()
//bba
```
- When overriding, return type and param type must be maintained.
### Overloading

``` swift
// all different method. Complier can distinguish this.
func makeNoise()
func makeNoise(param : Int)
func makeNoise(param : String)
func makeNoise(param : Double) -> String
//...
```
- Same name but, dif type of param or return value

``` swift
class HybridCar: Car {

}

class kickBoard: Vehicle {

}

let h = HybridCar()
h.description
//"Car : engineLevel = 0, so currentSpeed = 0.0"

let k = KickBoard()
k.description
```

- keyword "super" -> used when calling properties of parents class or methods.
- To prevent overrriding, 'final' keyword is used in front of var or func
``` swift
class Vehicle {
    final var currentSpeed = 0.0
    final var description: String{
        get {
            return ..
        }
    }
    final func makeNoise() {

    }
}
```
- if 'final' keyword is used in front of class, the class is not able to be inherited.

## Type Casting
``` swift
class Vehicle {
    var currentSpeed = 0.0

    final accelerate() {
        self.currentSpeed += 1
    }
}

class Car: Vehicle {
    var gear: Int {
        return Int(self.currentSpeed / 20) + 1
    }

    func wiper() {
        //
    }
}

let trans: Vehicle = Car()
```
``` swift
class Car: Vehicle {
    //
}

let car: Car = Vehicle() // Error
```
``` swift
class SUV: Car {
    var fourWheel = false
}

let jeep: Vehicle = SUV()
```
