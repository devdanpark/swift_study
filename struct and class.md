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
