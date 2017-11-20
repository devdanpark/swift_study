import UIKit

class Operations{

    func add(n1:Double, n2:Double) -> Double {
        return n1 + n2
    }

    func sub(n1:Double, n2:Double) -> Double {
        return n1 - n2
    }
}
extension Opeartions {
    func mul(n1:Double, n2:Double)->Double{
        return n1*n2
    }
}
let op = Operations()
let addR = op.add(n1: 10.5, n2: 11.2)
let subR = op.sub(n1:6.2, n2: 5.3)
let mulR = op.mul(n1:3.2, n2: 7.5)


extension Double{
    func roundTo(places:Int) -> Double {
        let dvisor:Double = pow(10.0, Double(places))
        return (self * divisor).rounded()
    }
}

let number:Double = 10.63555
print(number.roundTo(places: 3))