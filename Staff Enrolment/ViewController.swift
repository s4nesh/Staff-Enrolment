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
    

    
    
  // Staff number generator function
    var staffNumberArray = [Int]()
    func getStaffNumber() -> Int{
        let countOfStaffNumbers = staffNumberArray.count
        return countOfStaffNumbers + 1
    }
    
    
    // Check if all fields contain text
    func allTextFieldsContainText() -> Bool {
//        guard let nameInput = nameInput.text,
//              let ageInput = ageInput.text,
//              let jobInput = jobTitleInput.text,
//              let staffNumber = staffNumber.text else {
//            return false
//        }
//        print(nameInput,ageInput,jobInput,staffNumber)
//        return true
        
        if nameInput.text != ""{
            if ageInput.text != "" {
                if jobTitleInput.text != "" {
                    if staffNumber.text != "" {
                        return true
                    } else {
                        return false
                    }
                } else {
                    return false
                }
            } else {
                return false
            }
        } else {
            return false
        }
    }
    
    // Popup screen buttons
    @IBAction func numberGeneratorButtonPressed(_ sender: UIButton) {
        let newStaffNumber = getStaffNumber()
        staffNumber!.text = "Staff number: \(String(newStaffNumber))"
        staffNumberArray.append(newStaffNumber)
        
    }
    
    
    @IBAction func enrolledButtonPressed(_ sender: UIButton) {
        if allTextFieldsContainText() {
            displayLabel.text = "Success. Employee Enrolled"
        } else {
            displayLabel.text = "Please fill in all fields."
        }
        
    }
    
}

