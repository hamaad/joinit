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

class FirstViewController: UIViewController {

    
    var myRootRef = Firebase(url: "https://sizzling-fire-4884.firebaseio.com/")
    // Create a reference to a Firebase location

    @IBOutlet weak var messageTextField: UITextField!   // create a variable for the message text field
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        UITabBarItem.appearance().setTitleTextAttributes([NSForegroundColorAttributeName : UIColor.blackColor()], forState: .Normal)    // Make the navigation TAB bar a custom color: black
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func sendMessageButton(sender: UIButton) {    // called when the send message button is pressed
        sendMsg(messageTextField.text!)
    }
    func sendMsg(message:String)
    {
        myRootRef.setValue(message) // Write data to my Firebase database
    }


}

