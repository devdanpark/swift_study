//Sets

import UIKit

var jobs = Set<String>()
jobs.insert("Developer")
jobs.insert("tester")
jobs.insert("manager")
jobs.insert("admin")

for job in jobs {
    print("jobsSet:\(job)")
}
/**
jobsSet: Developer
jobsSet: tester
jobsSet: manager
jobsSet: admin
**/

var jobsArray = Array<String>()
jobsArray.append("Developer")
jobsArray.append("tester")
jobsArray.append("manager")

for job in jobsArray {
    print("jobsArray:\(job)")
}
/**
jobsArray:Developer
jobsArray:tester
jobsArray:manager
**/


