//
//  FirstViewController.swift
//  joinit
//
//  Created by Hamaad Markhiani and Christian Galang on 2/10/16.
//  Another comment 23456
//  Copyright © 2016 HamAndCheese. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth

class FirstViewController: UIViewController {
    

    @IBOutlet weak var userIDLabel: UILabel!
    
    
    @IBOutlet weak var messageTextField: UITextField!   // create a variable for the message text field
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.navigationBarHidden = true //hide navigation bar

        let currentUser = FIRAuth.auth()?.currentUser // user!. displayName, email, photoURL, uid
        
        self.userIDLabel.text = currentUser!.uid // show the user ID
        
        // Do any additional setup after loading the view, typically from a nib.
        
        UITabBarItem.appearance().setTitleTextAttributes([NSForegroundColorAttributeName : UIColor.blackColor()], forState: .Normal)    // Make the navigation TAB bar a custom color: black
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func logOutButton(sender: UIButton) {
        try! FIRAuth.auth()!.signOut() // log out
        self.performSegueWithIdentifier("toMain", sender: sender)   // segue to main screen
    }
    
    @IBAction func sendMessageButton(sender: UIButton) {    // called when the send message button is pressed
        sendMsg(messageTextField.text!)
    }
    func sendMsg(message:String)
    {
        print("xd") // Write data to my Firebase database
    }


}

