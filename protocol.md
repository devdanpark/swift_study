# Protocol
- A type which is a declaration of functionality only.
- No data storage of any kind.
- Essentially provides multiple inheritance in Swift.
- A protocol is simply a collection of method and property declarations.

### What are protocols good for?
- Making API more flexible and expressive
- Blind, structured communication between View and Controller
- Mandating behavior
- Sharing functionality in disperate types(String, Array, CountableRange are all Collections)
- Multiple inheritance of functionality, not data

``` swift
protocol SomeProtocol : InheritedProtocol1, InheritedProtocol2 {
    var someProperty: Int {get set}
    func aMethod(arg1: Double, anotherArgument: String) -> SomeType
    mutating func changeIt()
    init(arg: Type)
}
```
- Anyone that implements SomeProtocol must also implement InheritedProtocol1 and 2.
- You must specify whether a property is get only or both get and set
- Any functions that are expected to mutate the receiver should be marked mutating.
- You can even specify that implementewrs must implement a given initializer
``` swift
class SomeClass: SuperClassOfSomeClass, SomeProtocol, AnotherProtocol {
    //implementation of SomeClass here
    //which must include all the properties and methods in SomeProtocol & AnotherProtocol
}
```
``` swift
struct SomeStruct : SomeProtocol, AnotherProtocol {
    //implementation of SomeStruct here
    //which must include all the properties and methods in SomeProtocol & AnotherProtocol
}
```
