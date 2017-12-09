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

## SETS arithmetic operation
- intersection(_:) : Returns a new set with the elements that are common to both this set and the given sequence.

- symmetricDifference(_:) :Returns a new set with the elements that are either in this set or in the given sequence, but not in both.

- union(_:) : method to create a new set with the elements of a set and another set or sequence. 
- subtract(_:) :method to create a new set with the elements of a set that are not also in another set or sequence.
- isSubset(of:) :Returns a Boolean value that indicates whether this set is a subset of the given set.
- isSuperset(of:) :Returns a Boolean value that indicates whether this set is a superset of the given set.
- isStrictSubset(of:) and isStrictSuperset(of:) :methods to test whether a set is a subset or superset of, but not equal to, another set.
- isDisjoint(with:) :method to test whether a set has any elements in common with another set. 