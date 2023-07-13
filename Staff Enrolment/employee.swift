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
    var jobTitle: JobTitle?
    var staffNumber: Int
    
    enum JobTitle {
        case branchManager, areaManager, technician, cleaner
    }
    
}


