//
//  LoginViewController.swift
//  joinit
//
//  Created by Hamaad Markhiani on 2/21/16.
//  Copyright © 2016 HamAndCheese. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth

class LoginViewController: UIViewController, UITextFieldDelegate {
    
    
    @IBOutlet weak var emailTextField: UITextField!     // Establish a variable for the email text field
    @IBOutlet weak var passwordTextField: UITextField!  // Establish a variable for the password text field
    @IBOutlet weak var resultLabel: UILabel!            // Establish a variable for the result label
    
    @IBAction func loginButton(sender: UIButton) {      // The login button function (called when button pressed)
        FIRAuth.auth()?.signInWithEmail(emailTextField.text!, password: passwordTextField.text!) {
           (user, error) in
            if let error = error { // if there is an error...
                self.resultLabel.text = error.localizedDescription
            }
            else {
                self.resultLabel.text = "Successfully logged in user number: " + String(FIRAuth.auth()?.currentUser)
                self.performSegueWithIdentifier("about", sender: sender)
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

