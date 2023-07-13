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
    
    enum JobTitle {
        case branchManager, areaManager, technician, cleaner
    }
    
//    init(fullName: String, age: Int, jobTitle: JobTitle, staffNumber: Int) {
//        self.fullName = fullName
//        self.age = age
//        self.jobTitle = jobTitle
//        self.staffNumber = staffNumber
//    }
    
    init?(fullName: String?, age: Int?, jobTitle: String?, staffNumber: Int? = nil) {
        if let fullName = fullName {
            self.fullName = fullName
        } else {
            return nil
        }
        
        if let age = age {
            self.age = age
        } else {
            return nil
        }
        
        if let jobTitle = jobTitle {
            self.jobTitle = jobTitle
        } else {
            return nil
        }
        
        if let staffNumber = staffNumber {
            self.staffNumber = staffNumber
        } else {
            return nil
        }
    }
}



