//
//  ViewController.swift
//  Postcard
//
//  Created by JP Kesemeyer on 10/9/14.
//  Copyright (c) 2014 JP Kesemeyer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var mailButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        var from = "From: "
        var sent = "Sent: "
        
        nameLabel.hidden = false
        nameLabel.text = from+enterNameTextField.text
        nameLabel.textColor = UIColor.redColor()
    
        messageLabel.hidden = false
        messageLabel.text = sent+enterMessageTextField.text
        messageLabel.textColor = UIColor.redColor()
        
        enterMessageTextField.text = ""
        enterNameTextField.text = ""
        enterMessageTextField.resignFirstResponder()
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
        
    

    }
 
    
    

}

