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

### Get input as a parameter
``` swift
func functionName(parameter_name : type ...) 
```
``` swift
func avg(score: Int...) -> Double {
    var total = 0 //
    for r in score {
        total += r
    }
    return (Double(total) / Double(score.count))
}
print(avg(score: 10,20,30,40))
```

### Default as a parameter
``` swift
func functionName(parameter: type = default) {
    ...
}
```
``` swift
func echo(message: String, newline: Bool = true) {
    if newLine == true {
        print(message, true)
    } else {
        print(message, false)
    }
}
```

### Edit Parameter 
``` swift
func incrementBy(base: Int) -> Int {
    base += 1
    return base
}
```
- The code above, gets an error "Left side of mutating operator isn't mutable : 'base' is a 'let' constant
- This is because parameter is originally declared as a constant
- For this reason, we need to change the code like below
``` swift
func incrementBy(base: Int) -> Int {
    var base = base
    base += 1
    return base
}
```
- We declared a variable which has the same name as the parameter
``` swift
func descAge(name: String, _paramAge: Int) -> String{
    var name = name
    var paramAge = paramAge

    //change the value
    name = name + "sir"
    paramAge += 1
    return "\(name)'s age next Year \(paramAge)"
}
```

## InOut parameter
``` swift
var cnt = 30

func autoIncrement(value: Int) -> Int {
    var value = value
    value += 1

    return value
}

print(autoIncrement(value: cnt))
print(cnt)
```
### First-Class Object
- Object should be created during run-time
- Can deliver Object by Parameter
- Can use Object as return value
- Can save data or variable inside of the data structure

- can add function to variable or constant 
``` swift
func foo(base: Int -> String{
    return "\(base + 1)"
}

let fn1 = foo(base:5)
//6

let fn2 = foo 
fn2(5)
//6

func foo(base: Int) -> String{
    print("foo exectued")
    return "\(base + 1)"
}

let fn3 = foo(base:5)
//"foo executed"

let fn4 = foo
fn4(7)
//"foo executed"
```

## Function Types
``` swift
(parameter type1, parameter type2 ...) -> return type
```
- If nothing would be returned, 'void' needs to be added(Void is a function type)
``` swift
func boo(age: Int) -> String {
    return "\(age)"
}

// This function's type is (Int) -> String
```
