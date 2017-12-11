# Dictionary
- [Key : data, Key : Data, ...]
- One key connects to one data
- One dictionary key cannot be duplicated. If duplicated, item must be edited, not added. Then, previous data connected to the key value would be removed.
- No limit for data type, however, data type must be the same in one dictionary.
- No order in Dictionary items, but, in Key, there's inner order; therefore, we can use Iterator such as for~ in to search inside of the Dictionary.
- In dictionary, there's no type limit for key, but types must be possible to Hash operations.(Hashable Protocol)

``` swift
var capital = ["KR":"Seoul", "EN": "LONDON", "FR": "Paris:]
```
``` swift
Dictionary <Key Type, Value Type>()
```
``` swift
var capital = Dictonary<String, String>() //declare and init
var capital = [String : String]() //decalre and init
```
- Add item 
``` swift
var newCapital = [String:String]()
newCapital["JP"] = "Tokyo"
```
- isEmpty() : check if the dictionary is empty
- upDateValue(_:forKey:): add item or edit item
``` swift
newCapital.updateValue("Seoul", forKey: "KR") // "KR" : "Seoul" added and return 'nil'

newCapital.updateValue("London", forKey: "EN") // "EN" : "London" added and returns 'nil'
```
- removeValue(forKey:)
``` swift
newCapital.updateValue("Ottawa", forKey: "CA")
newCapital.updateValue("Beijing", forKey: "CN")
newCapital["CN"] = nil // remove the value
newCapital.removeValue(forKey: "CA") //remove the value
```

``` swift
if let removedVal = newCapital.removeValue(forKey:"CA") {
    print("removed value  : \(removedVal)")
} else {
    print("nothing has removed")
}
```
- When calling undefined key in Dictionary, Swift uses Optional.

### Dictionary Search
``` swift
for row in newCapital {
    // data from Dictionary (key, value) gets row as Tuple
    let (key, value) = row 
    print("current data \(key) : \(value)")
}
// basically same 
for (key, value) in newCapital {
    print("current data \(key) : \(value)")
}
```
