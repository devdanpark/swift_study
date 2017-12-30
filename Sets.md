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

### Examples
```swift
let A : Set = [1,3,5,7,9]
let B : Set = [3,5]
let C : Set = [3,5]
let D : Set = [2,4,6]

B.isSubset(of: A) // true
A.isSuperset(of: B) //true
C.isStrictSubset(of: A)//true
C.isStrictSubset(of: B)//false
A.isDisjoint(wit: D)//true
```

### Sets and Array
``` swift
var A= [4,2,5,1,7,4,9,11,3,5,4]
let B = Set(A) //set
A = Array(B) //[2,4,9,5,7,3,1,11] -> deleted duplicate values.
A = Array(Set(A)) //combined both two lines of code above
```
