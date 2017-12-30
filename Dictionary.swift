//Dictionary

import UIKit

var peopleAccounts=[10:"Beckham", 11:"Daniel", 12:"Emma"]
print(peopleAccount[11]!) //call the value

peopleAccount[11] = "Dan Park"
print(peopleAccounts[11]!)

//define without init

var airportLists = [String:String]
airportList["JFK"] = "John F Kenedy"
airportList["BG"] = "Baghdad"
airportList["ICA"] = "Incheon Airport"

//k -> key, v-> value
for(k,v) in airportLists{
    print("key\(k)")
    print("value \(v)")
}
/** 
key JFK
value John F Kenedy

key BG
value Baghdad

key ICA
value Incheon Airport
