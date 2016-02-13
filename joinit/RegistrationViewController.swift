//
//  RegistrationViewController.swift
//  
//
//  Created by Hamaad Markhiani on 2/12/16.
//
//

import UIKit

import Firebase


class RegistrationViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!     // Establish a variable for the email address text field
    @IBOutlet weak var passwordTextField: UITextField!  // Establish a variable for the password text field
    
    var databaseConnection = Firebase(url: "https://sizzling-fire-4884.firebaseio.com/") // Establish our database connection and assign it to an variable (object???)
    
    /*@IBAction func registerButton(sender: UIButton) {   // Function that is called when user hits the register button
        databaseConnection.createUser( emailTextField.text, password: passwordTextField.text,
            withCompletionBlock: { error, result in
            
                if error != nil {
                    // There was an error creating the account
                } else {
                    let uid = result["uid"] as? String
                    print("Successfully created user account with uid: \(uid)")
                }
        
        }
        )
    }*/
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
