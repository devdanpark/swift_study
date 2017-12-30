import UIKit

enum directions{
    case east 
    case south
    case west
    case north
}

let mydirect = directons.east

switch mydirect {
  case directions.east:
    print("move to east")
  case directions.north:
    print("move to north")
  case directions.west:
    print("move to west")
  case directions.south:
    print("move to south")

    default:
    print("not defined")
}