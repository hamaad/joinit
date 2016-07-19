//
//  RegistrationViewController.swift
//  
//
//  Created by Hamaad Markhiani on 2/12/16.
//
//

import UIKit
import Firebase
import FirebaseAuth


class RegistrationViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var emailTextField: UITextField!     // Establish a variable for the email address text field
    @IBOutlet weak var resultLabel: UILabel! // Where to display text if there was an error with login
    @IBOutlet weak var passwordTextField: UITextField!  // Establish a variable for the password text field
    
    
    @IBAction func registerButton(sender: UIButton) {
        // Function that is called when user hits the register button
        FIRAuth.auth()?.createUserWithEmail(emailTextField.text!, password: passwordTextField.text!) { (user, error) in
                
                if error != nil {
                    self.resultLabel.text = error?.localizedDescription
                } else {
                    self.resultLabel.text = "Registration successful! Sending you to login."
                    // TODO: Send to login screen.
                    self.performSegueWithIdentifier("toLogin", sender: sender)
                }
                
            }
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {    // function to make the keyboard disappear on return
        textField.resignFirstResponder()
        return true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
