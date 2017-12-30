import UIKit

func sub(n1:Int, n2:Int){
    let subValues = n1 - n2
    print("sub=\(subValues)")
}

func sub(n1:Double, n2:Double){
    let subValues = n1 - n2
    print("sub=\(subValues)")
}

func sub(n1:Int, n2:Double){
    let subValues = Double(n1) - n2
    print("sub=\(subValues)")
}

sub(n1: 10.10, n2: 10.6) // second one is called
sub(n1: 10, n2: 6) // first one is called
sub(n1: 2, n2: 1.3) // thrid one is called
