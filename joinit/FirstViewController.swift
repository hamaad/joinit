//
//  FirstViewController.swift
//  joinit
//
//  Created by Hamaad Markhiani and Christian Galang on 2/10/16.
//  Another comment 23
//  Copyright © 2016 HamAndCheese. All rights reserved.
//

import UIKit
import Firebase

class FirstViewController: UIViewController {

    
    var myRootRef = Firebase(url: "https://sizzling-fire-4884.firebaseio.com/")
    // Create a reference to a Firebase location
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        myRootRef.observeEventType(.Value, withBlock: {
            snapshot in
            print("\(snapshot.key) -> \(snapshot.value)")
        })
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func sendMsg(message:String)
    {
        myRootRef.setValue(message) // Write data to my Firebase database
    }


}

