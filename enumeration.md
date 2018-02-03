# Enumeration
- To prevent unwanted value to be typed.
- Can specify input value.
- want to force to select among limited values.

``` swift
enum name {
    // member def
    case 1
    case 2
    case ...
}
```
``` swift
enmu Direction {
    case north
    case south
    case east, west
}

let N = Direction.north
let S = Direction.south
```
### Enum Object
``` swift
var directionToHead = Direction.west
var directionToHead: Direction = Direction.west
var directionToHead = .east
```
