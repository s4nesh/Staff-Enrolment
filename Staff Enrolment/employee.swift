//
//  employee.swift
//  Staff Enrolment
//
//  Created by Sanesh Gobin on 2023/07/13.
//

import Foundation


struct Employee {
    var fullName: String?
    var age: Int?
    var jobTitle: String?
    var staffNumber: Int
    
//    enum JobTitle {
//        case branchManager, areaManager, technician, cleaner
//    }
    
    
    init?(fullName: String?, age: Int?, jobTitle: String?, staffNumber: Int? = nil) {
        if let fullName, let age, let jobTitle, let staffNumber {
            self.fullName = fullName
            self.age = age
            self.jobTitle = jobTitle
            self.staffNumber = staffNumber
        } else {
            return nil
        }
    }
}



