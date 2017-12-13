# Function
- To return 'nil', function needs to be declared as Optional
``` swift
// no parameter and return value
func printHello() {
    print("Hello")
}

// no parameter but, return value
func sayHell() -> String {
    let returnValue = "Hello"
    return returnValue
}

// with parameter, without return value
func printHelloWithName(name: String) {
    print("\(name), Hello")
}

//with parameter and return value
func sayHelloWithName(name: String) _. String {
    let returnValue = "\(name), Hello"
    return returnValue
}
```

``` swift
func hello(name: String?) {
    guard let _name = name else {
        return
    }

    print("\(_name), Hello")
}

let inputName = "Dan Park"
printHelloWithName(name: inputName)

printHelloWithName(name: "Daniel") 
//Here, "Daniel" is a Literal
//Here, name: -> called 'label' 
```
- if label is ommited, an error would occur

``` swift
func incrementBy(amount: Int, numberOfTimes: Int) {
    var count = 0
    count = amount * numberOfTimes
}

incrementBy(amount: 5, numberOfTimes: 2)
```

``` swift
func times(x: Int, y: Int) -> Int {
    return (x * y)
}
times(x: 5, y: 10)
times(x:y:)(5,10)
```

### Function Return and Tuple
``` swift
func getIndvInfo() -> (Int, String) {
    let height = 180
    let name = "Daniel"

    return(height, name)
}
```
``` swift
func getUserInfo() -> (Int, Character, String) {
    let gender: Character = "M"
    let height = 180
    let name = "Daniel"
    return(height, gender, name)
}
var uInfo = getUserInfo()
uInfo.0 // 180
uInfo.1 //"M"
uInfo.2 //"Daniel"

var (a,b,c) = getUserInfo()
a // 180
b // "M"
c // "Daniel"
```

``` swift
func getUserInfo() -> (h: Int, g: Character, n: String) {
    let gender: Character = "M"
    let height = 180
    let name = "Daniel"

    return(height,gender,name)

    var result = getSUserInfo()
    result.h //180
    result.g // "M"
    result.n //"Daniel"
}
```

### typealias
``` swift
typealias <new type name> = <type expression>
```
``` swift
typealias infoResult = (Int, Character, String)

func getUserInfo() -> infoResult {
    let gender: Character = "M"
    let height = 180
    let name = "Daniel"

    return (height, gender, name)
}
```
- Here, we re-define the tuple(Int, Character, String) to infoResult which is a new0type. Later, infoResult would be regarded as Tuple(Int, Character, String)
``` swift
let info = getUserInfo()

info.0 // 180
info.1 // "M"
info.2 // "Daniel"
```

``` swift
typealias infoResult = (h: Int, g: Character, n:String)
...

let info = getUserInfo()

info.h //180
info.g //"M"
info.n //"Daniel"
```
