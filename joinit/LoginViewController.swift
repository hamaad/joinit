//
//  LoginViewController.swift
//  joinit
//
//  Created by Hamaad Markhiani on 2/21/16.
//  Copyright © 2016 HamAndCheese. All rights reserved.
//

import UIKit
import Firebase


class LoginViewController: UIViewController, UITextFieldDelegate {
    
    var databaseConnection = Firebase(url: "https://sizzling-fire-4884.firebaseio.com/")
    
    @IBOutlet weak var emailTextField: UITextField!     // Establish a variable for the email text field
    @IBOutlet weak var passwordTextField: UITextField!  // Establish a variable for the password text field
    @IBOutlet weak var resultLabel: UILabel!            // Establish a variable for the result label
    
    @IBAction func loginButton(sender: UIButton) {      // The login button function (called when button pressed)
        databaseConnection.authUser(emailTextField.text, password: passwordTextField.text) {
            error, authData in
            if (error != nil)   // if there is an error...
            {
                self.resultLabel.text = "An error has occurred while logging in."
            }
            else                // if there is no error...
            {
                self.resultLabel.text = "Successfully logged in user number: " + String(self.databaseConnection.authData.uid)
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

