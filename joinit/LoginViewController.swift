//
//  LoginViewController.swift
//  joinit
//
//  Created by Hamaad Markhiani on 2/21/16.
//  Copyright © 2016 HamAndCheese. All rights reserved.
//

import UIKit
import Firebase


class LoginViewController: UIViewController {
    
    var databaseConnection = Firebase(url: "https://sizzling-fire-4884.firebaseio.com/")
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func loginButton(sender: UIButton) {
        databaseConnection.authUser(emailTextField.text, password: passwordTextField.text) {
            error, authData in
            if (error != nil)
            {
                self.resultLabel.text = "An error has occurred while logging in."
            }
            else
            {
                self.resultLabel.text = "Successfully logged in user number: " + String(self.databaseConnection.authData.uid)
            }
            
            
        }
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

