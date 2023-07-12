//
//  ViewController.swift
//  Staff Enrolment
//
//  Created by Sanesh Gobin on 2023/07/12.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var popUpView: UIView!
    
    @IBOutlet weak var enrollButtonSelect: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        popUpView.isHidden = true
        enrollButtonSelect.isEnabled = false
    }

    @IBAction func addEmpButton(_ sender: UIButton) {
        popUpView.isHidden = false
    }
    
}

