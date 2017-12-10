# TUPLE
- Can save different data types
- Can only use initially declared items.
``` swift
let tupleValue = ("a", "1", 2.5, true)
tupleValue.0 // "a"
tupleValue.1 //1
tupleValue.3 // true

var tpl01 : (Int, Int) = (100, 200)
var tpl02 : (Int, String, Int) = (100, "a", 200)
var tpl03 : (Int, (String, String)) = (100, "a", "b")
var tpl04 : (String = ("sample string")

let tupleValue: (String, Character, Int, Float, Bool) = ("a", "b", 1, 2.5, true)
```

### A function that returns tuple
``` swift
func getTupleValue() -> (String, String, Int) {
    return ("t", "v", 100)
}
let (a,b,c) = getTupleValue()
// a ==> "t"
// b ==> "v"
// c ==> 100
```
### Why Tuple?
- By using tuples, data types are created by parenthesis and return data types. 