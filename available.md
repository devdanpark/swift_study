# #available statemenet

- it is used for tell the OS version

``` swift
import UIKit
  
if(UIDevice.current().systemVersion.hasPrefix("9") {
    //ios 9 version 
} else if(UIDevice.current().systemVersion.hasPrefix("8")){
    //ios 8 
} else if (UIDevice.current().systemVersion.hasPrefix("7")) {
    //ios 7 version
} else {
    other versions
  }


)
```
basic form
``` swift
if #available(<platform version>, <...>, <*>) {
    <statement>
} else {
    <if API cannot be used>
}
```
- Currently, there are four platforms that might use #avaiable statement
  - IOS
  - OSX
  - watchOS
  - tvOS
