//
//  ViewController.swift
//  FunFacts
//
//  Created by laaptu on 12/9/14.
//  Copyright (c) 2014 laaptu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var messageLabel: UILabel!
    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var petImage: UIImageView!
    
    @IBOutlet weak var messageTextField: UITextField!
    
    weak var currentTextField:UITextField!
    
    @IBOutlet weak var sendMailBtn: UIButton!
    
    @IBOutlet var dummyTest: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func onButtonClick(sender: UIButton) {
        if(messageLabel.hidden){
            messageLabel.hidden=false
        }
//        let nameValue:Int? = nameTextField.text.toInt()
//        let msgValue:Int? = messageTextField.text.toInt()
//        var sum = nameValue!+msgValue!
//        messageLabel.text = "\(sum)"
//        
//        if(nameTextField.isFirstResponder()){
//            nameTextField.resignFirstResponder()}
//        if(messageTextField.isFirstResponder()){
//            messageTextField.resignFirstResponder()
//        }
        
        messageLabel.text = messageTextField.text;
        messageLabel.textColor = UIColor.redColor()
        messageTextField.text=""
        messageTextField.resignFirstResponder()
        sendMailBtn.setTitle("Mail Sent", forState: UIControlState.Normal)
    }
    
}

