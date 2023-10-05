//
//  ViewController.swift
//  TextValidaton
//
//  Created by shark boy on 10/2/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    @IBOutlet weak var emailErrorLabel: UILabel!
    @IBOutlet weak var passwordErrorLabel: UILabel!
    

    
    override func viewDidLoad() {
        passwordErrorLabel.isHidden = true
        emailErrorLabel.isHidden = true
        
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    //REMEMBER!!! THE SEGUE IS ALL MESSED UP

    
    @IBAction func submitPressed(_ sender: Any) {
        checkPassword()
    }
    
    func checkEmail() {
        
    }
    func checkPassword() {
        if let checkIt = passwordField.text {

            if checkIt.count < 8 {
                passwordErrorLabel.text = "Minimum character amount:8"
                passwordErrorLabel.isHidden = false
                return
            }
            if !checkIt.contains(where: { "@,.!@#$%^&*<>?+=-".contains($0) }) {// $0 represents each character in the string. contains is cool like that
                passwordErrorLabel.text = "Special character required (@,.!@#$%^&*<>?+=-)"
                print(checkIt)
                passwordErrorLabel.isHidden = false
                return
            }
            
            performSegue(withIdentifier: "LoginSegue", sender: checkIt)
            
        }
        
    }
}
