# Array
``` swift
Array <type>()
```
- <type> -> generic

``` swift
var cities = Array<String>()
// declare a string array and initialization
var cities : Array<String>
//declare
cities = Array() //initialization
var list  : [Int] = [] //type annotation + initialization
var rows : Array<Float> = [Float]() //type annotation + generic + initialization
```
- add items in Array
``` swift
append() // add an element at the end of the array
insert() // add an element to specific place.
insert(data007, at:2)
append(constentsOf:) // add an Array to at the end of another Array
```
- Examples
``` swift
var cities = [String]()
cities.append("Seoul")//["Seoul"]
cities.append("NEW YORK") //["Seoul", "NEW YORK"]
cities.insert("Tokyo", at: 1)//["Seoul", "Tokyo", "NEW YORK"]
cities.append(contentsOf: ["Dubai", "Sydney"]) // [Seoul", "Tokyo", "NEW YORK", "Dubai", "Sydney"]
```
``` swift
extension Array : RangeRelaceableCollection {
    public init(repeating repeatedValue: Element, count: Int)
    //count -> assign the length of the array
    //repeatedValue -> default item
    var cities = Array(repeating: "none", count: 2)
    //output : 0"none", 1"none" 2"none"
}
```
- using range in Array
``` swift
var alphabet = ["a", "b", "c", "d"]
alphabet[0...1] // ["a","b"]
alphabet[0...1] = [1,2]
//alphabet = [1,2,"c","d"]
```

