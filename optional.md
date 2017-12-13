# Optional
- Only Optional types can return Optional.

### Type Conversion
``` swift
//Int(another type)
let num = Int("123")
let num = Int("Swift")
```

- nil = Null or null in other languages
- Declared as an Optional type, it can save nil.
``` swift
var optInt : Int?
var optStr : String?
var optDouble : Double?
var optArr : [String]?
var optDic : Dictionary<String, String>?
var optDic2 : [String:String]?
var optClass : AnyObject?
```

``` swift
var optInt: Int?
optInt = 3

var optStr: String?
optStr = "Swift"

var optArr: [String]?
optArr = ["C", "A", "Java"]

var optDic: [String : Int]?
optDic = ["English" : 100, "Math" : 99]
```
- Optionals cannot be operated
- Int(String) -> returns Optional type Int
``` swift
Int("123") + Int("123") // X
Int("123") + 30 // X
```
- Forced-Unwrapping Operator : ! -> It unwraps Optional
``` swift
var optInt: Int? = 3 
print("Optional: \(optInt)") // Optional(3)
print("unwrapping: \(optInt!)") // 3

Int("123")! + Int("123")! = 246
```
- To use '!', it is necessary to check whether the Optional value is 'nil' or not. If the Optional value is not 'nil,' then we need to use '!' 
``` swift
var str = "123"
var intFromStr = Int(str)

if intFromStr != nil {
    print("converted : \(intFromStr!)")
} else {
    print("failed")
}
```

``` swift
var str = "Swift"
var intFromStr = Int(str)

if intFromStr != nil {
    print("converted : \(intFromStr!)")
} else {
    print("failed")
}
// as "Swift" cannot be converted to int, the output is "failed"

```
- For this reason, we have to use '!' as a forced-unwrapping Operator when Optional value is not 'nil'

### Optional Binding
``` swift
func intStr(str: String){

    guard let intFromStr = Int(str) else {
        print("failed")
        return
    }
    print("returned, converted value \(intFromStr)")
}
```

``` swift
var capital = ["KR" : "Seoul", "EN" : "London", "FR" : "Paris"]
print(capital["KR"]) //Optional("Seoul")
print(capital["KR"]!) // Seoul
```
- The code above is not a good code since it did not check nil. The code forced to unwrap by using '!'

``` swift
//Better code
if(capital["KR"] != nil) {
    print(capital["KR"])
} 
// or
if let val = capital["KR"] {
    print(val)
}
```
- When using '!' in Optional type, 'nil' must be checked to prevent error.

### Unwraping Optional by Compiler
``` swift
let optInt = Int("123")

if ((optInt!) == 123) {
    print("optInt == 123")
} else {
    print("optInt != 123)
}
// optInt == 123
``` 
``` swift
if (optInt == 123) {
    print("optInt == 123")
} else {
    print("optInt != 123")
}
// Optional Value is Optional(123) -> it is different from 123. For this reaosn, else statement might run. However, the output is not.
```
- It happens when comparing by using comparing operator. 
``` swift
let tempInt = Int("123")

tempInt == 123 //true
tempInt == Optional(123) //true
tempInt! == 123 //true
tempInt! == Optional(123) //true
```
- As one side is Optional and the other side is general type, then it automatically unwreap the Optional

``` swift
var optValue01 = Optional(123) 
var optValue02 : Int? = 123 // turns to Optional(123)
```

### Implicitly Unwrapped Optional
- Not using !
``` swift
//explicitly unwrapping
var str: String? = "Swift Optional"
print(str)
//Optional("Swift Optional")

var str: String! = "Swift Optional"
print(str)
// Swift Optional
```
- If there's any possibility that the value of the variable might be 'nil', then we should not use implicit unwrapping.