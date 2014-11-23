//
//  ViewController.swift
//  Challenge1_Postcard
//
//  Created by Julian Weiland on 23.11.14.
//  Copyright (c) 2014 Julian Weiland. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var txtName: UITextField!
    @IBOutlet var txtMessage: UITextField!
    @IBOutlet var btnSend: UIButton!
    @IBOutlet var lblResult: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        btnSend.setTitle("Sending…", forState: UIControlState.Highlighted)
        lblResult.hidden = true
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendButtonPressed(sender: UIButton) {

        if (txtName.hasText()){
            lblResult.text = txtName.text
        } else {
            lblResult.text = "Unknown"
        }
        
        lblResult.text! += " : " + txtMessage.text!
        txtMessage.resignFirstResponder()
        btnSend.setTitle("Mail sent", forState: UIControlState.Normal)
        lblResult.textColor = UIColor.blueColor()
        lblResult.hidden = false
        txtName.enabled = false
        txtMessage.text = ""
        
        
    }
    
    
}

