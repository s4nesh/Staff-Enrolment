//
//  functions.swift
//  Staff Enrolment
//
//  Created by Sanesh Gobin on 2023/07/13.
//

import Foundation

// Staff number generator

func getStaffNumber() -> Int {
    let countOfEmployees = employeeNumbers.count
    return countOfEmployees + 1
}


