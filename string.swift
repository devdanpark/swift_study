import UIKit

let msg = "Daniel"
let msg1 = "Cheer up"
let full = msg + msg1
print(full) 
// Daniel Cheer up

let full2 = "\(msg1), \(msg)"
print(full2)
// Cheer up Daniel

msg1.append(msg)
msg.capitalized
msg.lowercased()
msg.uppercased()

let info = " he works for software department "
info.contains("works") //true
info.contains("daniel") //false

let msg3 = " "
msg3.isEmpty //true

