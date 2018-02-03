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
struct SomeStruct: SomeProtocol, AnotherProtocol {
    //implementation of SomeStruct here
    //which must include all the properties and methods in SomeProtocol & AnotherProtocol
}
```

### Property

``` swift
protocol SomePropertyProtocol {
  var name: String {get set}
  var description: String {get}
}
```



``` swift
struct RubyMember: SomePropertyProtocol {
  var name = "Daniel"
  var description: String {
    return "Name : \(self.name)"
  }
}
```

- Implemented SomePropertyProtocol

### Method

``` swift
protocol SomeMethodProtocol {
  func execute(cmd: String)
  func showPort(p: Int) -> String
}
```

``` swift
struct RubyService: SomeMethodProtocol {
  func execute(cmd: String) {
    if cmd == "start" {
      print("execute")
    }
  }
  func showPort(p: Int) -> String {
    return "Port : \(p)"
  }
}
```

``` swift
protocol NewMethodProtocol {
  mutating func execute(cmd command: String, desc: String)
  func showPort(p: Int, memo desc: String) -> String
}

struct RubyNewService: NewMethodProtocol {
  func execute(cmd command: String, desc: String) {
    if command == "strat" {
      print("\(desc)executed")
    }
  }
}
```

### Delegation

- A very important (simple) use of protocols

  It is a way to implement "blind communication" between a View and its Controller

- How it plays out

  1. A view declares a delegation protocol
  2. The View's API has a weak delegate property whose type is that delegation protocol
  3. The View uses the delegate property to get/do things it cannot own or control on its own
  4. The Controller declares that it implements the protocol
  5. The Controller sets delegate of the View to itself using the property.
  6. THe Controller implements the protocol.

- Now the View is hooked up to the Controller
  But the View still has no idea what the Controller is, so the View remains generic/reusable

- This mecahnism is found througout iOS

  However, it was designed pre-closures in Swift. Closures are sometimes a better option.

- Example

UIScrollView has a delegate property



### Another use of Protocol

- Being a key in a Dictionary

  To be a key in a Dictionary, you have toe be able to be unique.

  A key in a Dictionary does this by providing an Int that is very probably unique(a hash) and then also by implementing equality testing to see if two keys are, in fact, the same.

``` swift
// Hashable protocol
protocol Hashable: Equatable {
  var hashValue: Int {get}
}
```

Types that conform to Equatable have to have a type function called ==. The arguments to == are both of that same type.

The == operator also happens to look for such a static method to provide its implementation. 

``` swift
//Dictionary
Dictionary<Key: Hashable, Value>
```

