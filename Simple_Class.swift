import UIKit

class Car {
    //properties
    var type:String?
    var model:Int?
    var price:Double?
    var milesDrive:Int?
    var owner:String?

    init() {
        print("class is created")
    }
    init(type:String, model: Int, price:Double, milesDrive:Int, owner:String) {
        self.type = type
        self.model = model
        self.price = price
        self.milesDrive = milesDrive
        self.owner = owner
    }
    //methods
    func getPrice() -> Double {
        let newPrice = price! - (Double(milesDrive! * 10))
        return newPrice
    }
    func getOwner() -> String {
        return self.owner!
    }
}
//inheritence
class Truck:Car {

    //methods
    func getModel() -> Int {
        return model!
    }
}
//create instance
let car1 = Car() //including all the properties of Car class
let car3 = Car(type: "Hyudai", model: 2017, price: 30000, milesDrive: 0, owner: "Daniel")
car1.type = "BMW"
car1.model = 2017
car1.price = 1000000
car1.milesDrive = 0
car1.owner = "Daniel Park"
print(car1.getPrice())//1000000
print(car1.getOwner()) // Daniel Park

let car2 = Car() //including all the properties of Car class, totally different from car1
car2.type = "AUDI"
car2.model = 2017
car2.price = 1000000.55
car2.milesDrive = 0
car2.owner = "Daniel Park"
print(car2.getPrice())//1000000.55
print(car2.getOwner()) // Daniel Park
//create instance
let truck1 = Truck(type: "BMW", model: 2011, price: 135455, mildesDrive: 552145, owner: "Dan")
//Truck has the same methods and properties as Car class
print(truck1.getPrice())
print(truck1.getOwner())
print(truck1.getModel())