//Function Overloading

import UIKit

func sum(n1:Double, n2:Double){
    let sumValue = n1 + n2
    print("sume=\(sumValue)")
}

func sum(n1:Double, n2:Double, n3:Double){
    let sumValue = n1 + n2 + n3
    print("sum=\(sumValue)")
}

func sum(n1:Double, n2:Double, n3:Double, n4:Double){
    let sumValue = n1 + n2 + n3 + n4
    print("sum=\(sumValue)")
}

sum(n1: 10, n2: 5, n3: 11) //26
sum(n1: 6, n2: 12) //18
sum(n1: 22, n2: 44, n3: 11, n4: 22) //99

