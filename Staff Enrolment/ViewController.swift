//
//  ViewController.swift
//  Staff Enrolment
//
//  Created by Sanesh Gobin on 2023/07/12.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var popUpView: UIView!
    @IBOutlet weak var nameInput: UITextField!
    @IBOutlet weak var ageInput: UITextField!
    @IBOutlet weak var jobTitleInput: UITextField!
    @IBOutlet weak var enrollButtonSelect: UIButton!

    @IBOutlet weak var displayLabel: UILabel!
    @IBOutlet weak var staffNumber: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        popUpView.isHidden = true
//        enrollButtonSelect.isEnabled = false
    }
    
    

    @IBAction func addEmpButton(_ sender: UIButton) {
        popUpView.isHidden = false
    }
    

    // Create employee
    func createEmployee() -> Employee? {
        guard let nameIntput = nameInput.text,
              let ageInput = ageInput.text,
              let jobTitleInput = jobTitleInput.text,
              let staffNumber = staffNumber.text else {
            return nil
        }
        
        let newEmployee = Employee(fullName: nameIntput, age: Int(ageInput), jobTitle: jobTitleInput, staffNumber: Int(staffNumber))
     
        return newEmployee
    }

    
    // Popup screen buttons
    @IBAction func numberGeneratorButtonPressed(_ sender: UIButton) {
        let generatedNumber = getStaffNumber()
        staffNumber.text = String(generatedNumber)
    }
    
    
    @IBAction func enrolledButtonPressed(_ sender: UIButton) {
        let employeeToEnrol = createEmployee()
        if let employeeToEnrol = employeeToEnrol {
            listOfEmployees.append(employeeToEnrol)
            displayLabel.text = "Success. Employee has been enrolled."
        } else {
            displayLabel.text = "Please fill in all fields."
        }
    }
    
}

