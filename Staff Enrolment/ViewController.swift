//
//  ViewController.swift
//  Staff Enrolment
//
//  Created by Sanesh Gobin on 2023/07/12.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var popUpView: UIView!
    @IBOutlet weak var nameInput: UITextField!
    @IBOutlet weak var ageInput: UITextField!
    @IBOutlet weak var jobTitleInput: UITextField!
    @IBOutlet weak var enrollButtonSelect: UIButton!
    @IBOutlet weak var doneButton: UIButton!
    
    @IBOutlet weak var enrolButton: UIButton!
    @IBOutlet weak var displayLabel: UILabel!
    @IBOutlet weak var staffNumber: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // The delagate method added to dismiss the keyboard when pressing return on the keyboard. Snippet taken from the web
        
        nameInput.delegate = self
        jobTitleInput.delegate = self
        popUpView.isHidden = true
        doneButton.isEnabled = false

    }
  
        // Snippet taken from the internet to dismis keyboard. Class also modified: added UITextfieldDelegate
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
           textField.resignFirstResponder() // dismiss keyboard
           return true
       }

    @IBAction func addEmpButton(_ sender: UIButton) {
        popUpView.isHidden = false
        doneButton.isEnabled = false
        enrolButton.isEnabled = true
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
            employeeNumbers.append(Int(employeeToEnrol.staffNumber))
            displayLabel.text = "Success. Employee has been enrolled."
            doneButton.isEnabled = true
            enrolButton.isEnabled = false
        } else {
            displayLabel.text = "Please fill in all fields."
        }
    }
    
    
    @IBAction func doneButtonPressed(_ sender: UIButton) {
        nameInput.text = nil
        ageInput.text = nil
        jobTitleInput.text = nil
        staffNumber.text = nil
        displayLabel.text = nil
        popUpView.isHidden = true
    }
    
}

