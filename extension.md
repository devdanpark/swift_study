``` swift
enum UIImagePickerCOntrollerSourceType: Int {
  case photoLibrary
  case camera
  case savedPhotosAlbum
}
```

``` swift
let alert = UIAlertController(title: "Alert", message: "action sheet", preferredStyle: .actionSheet)

let alert = UIAlertController(title: " alert", message: "alert window.", preferredStyle: .alert)
```

### Extension

- It is quite similar to Category in Objective-C
- Adding new operational property
- Creating new Method
- New init statement
- Can create Protocol without editing other objects

``` swift
extension Double {
  var km: Double {return self * 1_000.0}
  var m: Double {return self}
  var cm: Double{return self / 100.0}
  var mm: Double {return self / 1_000.0}
  var description: String {
    return "\(self)km \(self.km)m. \(self)cm \(self.cm)m, \(self)mm \(self.mm)m"
  }
}

let distance = 42.0.km + 195.m
print("Marathon \(distance)m")

1_000 == 1000 //true
1_00_0 == 100_0 //true
1_0_0_0 == 1000 // true
```

### Extension and Method

``` swift
extension Int {
  func repeatRun(task: () -> Void) {
    for _ in 0 .. < self
    {
      task()
    }  
  }
}

let d = 3
d.repeatRun(task: {
  print("Hello")
})
//Hello
//Hello
//Hello
```

- By using 'mutating' keyword, we can make the extension be edited by itself

``` swift
extension Int {
  mutation func square() {
    self = self * self
  }
}

var value = 3
value.square() //9
//we cannot use let here
```

``` swift
import UIKit
class ViewController: UIViewController {
  override func viewDidLoad() {
    super.viewDidLoad()
  }
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
  }
  extension ViewController {
    func save(_value: Any, forKey key: String) {
      
    }
    func load(_key: String) -> Any? {
      return nil
    }
  }
}
```

