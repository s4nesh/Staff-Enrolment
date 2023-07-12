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
    

    
    
    // Popup screen buttons
    var staffNumberArray = [Int]()
    func getStaffNumber() -> Int{
        let countOfStaffNumbers = staffNumberArray.count
        return countOfStaffNumbers + 1
    }
    
    @IBAction func numberGeneratorButtonPressed(_ sender: UIButton) {
        let newStaffNumber = getStaffNumber()
        staffNumber!.text = "Staff number: \(String(newStaffNumber))"
        staffNumberArray.append(newStaffNumber)
        
    }
    
    @IBAction func enrolledButtonPressed(_ sender: UIButton) {
        
        
    }
    
}

