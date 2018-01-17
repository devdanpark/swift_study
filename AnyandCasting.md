# Thrown Errors

In swift methods can trhow errors

``` swift
func save() throws
do {
  try context.save()
} catch let error {
  throw error // this would re-throw the error
}
try! context.save() // will crash your program if save() actually throws an error

let x = try? errorProneFunctionThatReturnsAnInt() // x will be Int?
```

## Any & AnyObject

Any & AnyObject are special types

- These types used to be commonly used for compatibility with old Objective-C APIs. But not so much anymore in iOS11.

- Sometimes(rarely) Any will be the type of a functions' argument

  ``` swift
  func prepare(for segue: UIStoryBoardSegue, sender: Any?)
  ```

  ``` swift
  let unknown: Any = ... // we cannot send unkown a message because it is "typeless"
  if let foo = unknown as? MyType {
    // foo is of type MyType in here
    // so we can invoke MyType methods or access MyType vars in foo
    // if unknown was not of type MyType, then we will never get here. 
  }
  ```

  ​

## Casting

By the way, casting with as? is not just for Any & AnyObject.

You can cast any type with as? into any other type.

Mostly this would be casting an object from one of its superclasses down to a subclass. But it could also be used to cast any type to a protocol it implements. 

``` swift
let vc: UIViewController = ConcentrationViewController()
if let cvc = vc as? ConcentrationViewController {
  cvc.flipCard() // this is okay
}
```

