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