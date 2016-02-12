//
//  FirstViewController.swift
//  joinit
//
//  Created by Hamaad Markhiani and Christian Galang on 2/10/16.
//  Another comment ham
//  Copyright © 2016 HamAndCheese. All rights reserved.
//

import UIKit
import Firebase

class FirstViewController: UIViewController {
    // MARK: Properties

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var passwordTextField: UITextField!
    
    var myRootRef = Firebase(url: "https://sizzling-fire-4884.firebaseio.com/")
    // Create a reference to a Firebase location
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        /*myRootRef.observeEventType(.Value, withBlock: {
            snapshot in
            print("\(snapshot.key) -> \(snapshot.value)")
        })*/ // Print message to xCode log
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    // MARK: Actions

    @IBAction func sendMessageButton(sender: UIButton) {
        //
        
        myRootRef.createUser(nameTextField.text, password: passwordTextField.text,
            withValueCompletionBlock: { error, result in
                
                if error != nil {
                    // There was an error creating the account
                } else {
                    let uid = result["uid"] as? String
                    print("Successfully created user account with uid: \(uid)")
                }
        })
        
        myRootRef.
    }
}

