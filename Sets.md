# SETS
- we use sets when we want to save some data without any duplicate values
- Also, we use sets when the order of the data is not important.
``` swift
var g : Set<String> = [] // declare and initialization
var genres : Set<String> = ["Classic", "Rock", "Ballad"]
Set<type>()
```
```swift
if genres.eisEmpty{
    print("set is empty")
} else {
    print(genres.count)
}
```
- when we want to add an element, we use 'insert("item")'
- when we want to remove an element, we use 'remove("item")'
- when we ant to remove all, we use 'removeAll()'
- when we ant to check whether a specific item is included, we use 'contains("item")'-> it returns true or false

