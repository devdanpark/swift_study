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

``` swift
let t1: (Int, String) -> String = boo

let t2 = boo(age:name:)
```

``` swift
let fn01: (Int) -> String = boo // boo(age:)
let fn02: (Int, String) -> String = boo // boo(age: name:)
```

``` swift
func boo(age: Int, name: String) -> String {
    return "\(name)'s age \(age)"
}

func boo(height: Int, nick: String) -> String {
    return"\(nick)'s height is \(height)"
}

let fn03: (Int, String) -> String = boo
let fn04: (Int, String) -> String = boo

let fn03: (Int, String) -> String = boo(age:name:)
let fn04: (Int, String) -> String = boo(height:nick:)

let fn03 = boo(age:name:)
let fn04 = boo(height:nick:)
```

```swift
func foo(age: Int, name: String) -> (String, Int){
    return (name, age)
}
```
``` swift
// No parameter
func foo() -> String {
    return "Empty Values"
}

// type : ()-> String

// No return value
func boo(base: Int) {
    print("Param = \(base)")
}
//type: (Int) -> ()

// No Parameter and No Return Value
func too() {
    print("Empty values")
}
// () -> ()
```

### Using function as a return value
``` swift
func desc() -> String{
    return "this is desc()"
}

func pass() -> () -> String {
    return desc
}
// type: () -> String

let p = pass()
p() // "this is desc()"
```

``` swift
func plus(a: int, b: Int) -> Int {
    return a + b
}

func divide(a: Int, b: Int) -> Int {
    guard b != 0 else {
        return 0
    }
    return a / b
}

func calc(_operand: String) -> (Int, Int) -> Int {

    switch operand {

        case "+" :
          return plus

        case "/" :
          return divide

        default :
          return plus
    }
}

let c = calc("+")
c(3,4) // plus(3,4) = 7

let c4 = calc("/")
c4(3,4) // divide(3,4) = 0
```

### Callback Function
``` swift
func incr(param: Int) -> Int {
    return param + 1
}

func broker(base: Int, function fn: (Int) -> Int) -> Int {
    return fn(base)
}

broker(base: 3, function: incr) //4
```
- Mostly, we call a mediator function as "Broker"

``` swift
// Callback function example

func successThroug() {
    print("success")
}

func failThrough() {
    print("error occurred")
}

func divide(base: Int, success sCallBack: () -> Void, fall fCallBack: () -> Void) -> Int {
    
    guard base != 0 else {
        fCallBack() //error
        return 0
    }

    defer {
        sCallBack() //Success
    }
    return 100 / base
}

divide(base: 30, success: successThrough, fail: failThrough)
```

### defer block
- It is used regardless of order. It is executed right before the function ends.
- If the function ends before reading the defer block, defer block would not be executed.
- You can create defer block several times. Then, the last one executes first. They are executed reversely.
- You can reiterate defer block. Then the outer defer block is executed first and then the innerest defer block is executes at the end.

``` swift
divide(base: 30, success: successThrough, fail: failThrough)

divide(base:success:fail) //call the function.
// In this case, if the function's operation succeeded, then it runs successThrough. If failed, it runs failThrough. 
```

### Closure
``` swift
divide(base: 30
    success: {
        () -> Void in
        print("success")
    },
    fail: {
        () -> Void in
        print("failed")
    }
)
```

### Nested Function
- Inner Function
- Outer Function

``` swift
// Outer Function
func outer(base: Int) -> String {
    //Inner Function
    func inner(inc: Int) -> String{
        return "\(inc) returned"
    }
    let result = inner(inc: base +1 )
    return result
}
outer(base: 3) // "4 returned"
```

``` swift
// outer function
func outer(param: Int) -> (Int) -> String {
    //Inner Function
    func inner(inc: Int) -> String {
        return "\(inc) is returned "

    }
    return inner
}

let fn1 = outer(param: 3) // outer() is executed, then inner is substituted.
let fn2 = fn1(30) // It is the same as inner(inc: 30)
```
- Here, the inner function's return value is returned to the outer function's output.
- However, here, if the inner function is returned like this, the outer function's output is the inner function itself.

``` swift
func basic(param: Int) -> (Int)-> Int {
    //Closure begins
    let value = param + 20

    func append(add: Int) -> Int {
        return value + add
    }
    //Closure Ends
    return append
}
let result = basic(param: 10)
result(10)
//40
```
- Here, append function has 'Closure'
- Closure: It is created when returns inner function inside of the outer function and the inner function refers the outer function's local variable or constant.
- THat is, "Closure" is an Object that contains Context which affects both inner and outer functions.
 
``` swift
{
    () -> () in
    print("Closure is Executed")
}
```
``` swift
{
    () -> Void in
    print("Closure is Executed")
}
```
``` swift
let f = {() -> Void in
    print("Closure is executed")
}
f()
```
``` swift
({
    () -> Void in
    print("Closure is Executed")
})()
```
``` swift
let c = { (s1: Int, s2: String) -> Void in
    print("s1: \(s1), s2:\(s2)") 
}
c(1, "closure")
```
``` swift
({
    (s1: Int, s2: String) -> Void in
    print("s1: \(s1), s2:\(s2)")
})(1, "closure")
```

### Closure Expression
``` swift

var value = [1, 9, 5, 7, 3, 2]
func order(s1: Int, s2: Int) -> Bool {
    if s1 > s2 {
        return true 
    } else {
        return false
    }
}
//sort by using sort(by:)
value.sort(by: order)
//[9,7,5,3,2,1]

{
    (s1: Int, s2: Int) -> Bool in
    if s1 > s2 {
        return true
    } else {
        return false
    }
}

value.sort(by: {
    (s1: Int, s2: Int) -> Bool in
    if s1 > s2 {
        return true
    } else {
        return false
    }
})

{
    (s1: Int, s2: Int) -> Bool in
    return s1 > s2
}

value.sort(by: {(s1: Int, s2: Int) -> Bool in return s1 > s2})

{ (s1: Int, s2: Int) in
    return s1 > s2
}

value.sort(by: { (s1: Int, s2: Int) in return s1 > s2})

value.sort(by: >)
```

### Trailing Closure
``` swift
value.sort(by: {(s1, s2) in 
    return s1 > s2
})
```
``` swift
value.sort() {(s1,s2) in
    return s1 > s2
}
```
``` swift
func divide(base: Int, success s: () -> Void -> Int) {
    defer {
        s() //run "success func"
    } 
    return 100 / base
}

divide(base: 100 { () in 
    print("operating success")
})
//success can be ommitted
```

## @escaping and @autoescape
### @escaping : save closure delievered by param, then make it be used in other cases
``` swift
func callback(fn: () -> Void) {
    fn()
} 

callback {
    print("Closure Executed")
} 
```
- callback(fn:) executes Closure delievered by param.
``` swift
func callback(fn: () -> Void) {
    let f = fn // Closure to f
    f() // execute Closure
}
```
- This code above will have an error "Non-escaping parameter 'fn' may only be called -> This means that Non-escaping param 'fn' can only directly be called.

``` swift
func callback(fn: () -> Void) {
    func innerCallback() {
        fn()
    }
}
//adding @escaping
func callback(fn: @escaping() -> Void) {
    let f = fn // Closure
    f() // execute
}
//escaping closure
callback {
    print("Clsure Executed")
}
```

### @autoclosure
``` swift
func condition(stmt: () -> Bool) {
    if stmt() == true {
        print("true")
    } else {
        print("false")
    }
}

//execution 1
condition(stmt: {
    4 > 2
})
//execution 2
condition {
    4 > 2
}
```
``` swift
func condition(stmt: @autoclosure () -> Bool) {
    if stmt() == true {
        print("true")
    } else {
        print("false")
    }
}

condition(stmt: (4 > 2)) 
```
``` swift
//empty array
var arrs = [String]()

func addVars(fn: @autoclosure() -> Void) {
    arrs = Array(repeating: "", count: 3)
    fn()
}

arrs.insert("KR", at:1) //error

addVars(fn: arrs.insert("KR", at: 1)) //delayed execution
