//
//  ViewController.swift
//  aboutmepj
//
//  Created by cecetoni on 8/20/25.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var morePetsSwitch: UISwitch!
    
    @IBOutlet weak var morePetsStepper: UIStepper!
    
    @IBOutlet weak var firstNameTextField: UITextField!
    
    @IBOutlet weak var LastNameTextField: UITextField!
    
    
    @IBOutlet weak var schoolNameTextField: UITextField!
    
    @IBOutlet weak var yearSegmentedControl: UISegmentedControl!
    
    
    @IBOutlet weak var numberofPetsLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    @IBAction func introduceSelfTapped(_ sender: UIButton) {
        // Get the selected year (segment)
                let year = yearSegmentedControl.titleForSegment(at: yearSegmentedControl.selectedSegmentIndex) ?? "a year"
                
                // Build introduction string
                let introduction = """
                My name is \(firstNameTextField.text ?? "") \(LastNameTextField.text ?? "") and I attend \(schoolNameTextField.text ?? "").
                I am currently in my \(year) year and I own \(numberofPetsLabel.text ?? "0") dogs.
                It is \(morePetsSwitch.isOn) that I want more pets.
                """
                
                // Create alert
                let alertController = UIAlertController(title: "My Introduction", message: introduction, preferredStyle: .alert)
                
                // Add dismiss button
                let action = UIAlertAction(title: "Nice to meet you!", style: .default, handler: nil)
                alertController.addAction(action)
                
                // Present alert
                present(alertController, animated: true, completion: nil)
            }
    @IBAction func stepperDidChange(_ sender: UIStepper) {
    numberofPetsLabel.text = "\(Int(sender.value))"
    }
    
    
}


