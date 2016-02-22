//
//  RegistrationViewController.swift
//  
//
//  Created by Hamaad Markhiani on 2/12/16.
//
//

import UIKit
import Firebase


class RegistrationViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var emailTextField: UITextField!     // Establish a variable for the email address text field
    @IBOutlet weak var resultLabel: UILabel! // Where to display text if there was an error with login
    @IBOutlet weak var passwordTextField: UITextField!  // Establish a variable for the password text field
    
    var databaseConnection = Firebase(url: "https://sizzling-fire-4884.firebaseio.com/") // Establish our database connection and assign it to an variable (object???)
    
    
    @IBAction func registerButton(sender: UIButton) {
        // Function that is called when user hits the register button
        databaseConnection.createUser(emailTextField.text, password: passwordTextField.text,
            withValueCompletionBlock: { error, result in
                
                if error != nil {
                    self.resultLabel.text = "Registration unsuccessful. Invalid email or email registered already."
                } else {
                    self.resultLabel.text = "Registration successful! Sending you to login whenever it's made."
                    // TODO: Send to login screen.
                }
                
            }
        )
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
