## Other interesting Classes

### NSObject

base class for Objective-C classes

Some advanced features will require you to subclass from NSObject.

### NSNumber

Generic number-holding class.

```swift
let n = NSNumber(35.5) or let n: NSNumber = 35.5
let intified: Int = n.intValue //also doubleValue, boolValue, etc
```

### Date

value type used to find out the date and time right now or to store past or future dates. 

Calendar, DateFormatter, DateComponents.

### Data

A value type "bag o' bits" Used to save/restore/transmit raw data througout the iOS SDK.

