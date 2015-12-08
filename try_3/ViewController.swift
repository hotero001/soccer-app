//
//  ViewController.swift
//  try_3
//
//  Created by Hector Otero on 12/7/15.
//  Copyright © 2015 Larsen & McDermott Enterprises, LLC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var segueButton: UIButton!
    @IBOutlet weak var awayTeamTextField: UITextField!
    @IBOutlet weak var halfLengthTextField: UITextField!
    @IBOutlet weak var homeColorTextField: UITextField!
    @IBOutlet weak var awayColorTextField: UITextField!
    @IBOutlet weak var ar1TextField: UITextField!
    @IBOutlet weak var ar2TextField: UITextField!
    @IBOutlet weak var refTextField: UITextField!
    @IBOutlet weak var startTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        halfLengthTextField.placeholder = "Half Length(minutes)"
        halfLengthTextField.textAlignment = NSTextAlignment.Center
        
        textField.placeholder = "Home Team Name"
        textField.textAlignment = NSTextAlignment.Center
        
        awayTeamTextField.placeholder = "Away Team Name"
        awayTeamTextField.textAlignment = NSTextAlignment.Center
        
        homeColorTextField.placeholder = "Home Team Color"
        homeColorTextField.textAlignment = NSTextAlignment.Center
        
        awayColorTextField.placeholder = "Away Team Color"
        awayColorTextField.textAlignment = NSTextAlignment.Center
        
        ar1TextField.placeholder = "AR #1 Name"
        ar1TextField.textAlignment = NSTextAlignment.Center
        
        ar2TextField.placeholder = "AR #2 Name"
        ar2TextField.textAlignment = NSTextAlignment.Center
        
        refTextField.placeholder = "Center Ref Name"
        refTextField.textAlignment = NSTextAlignment.Center
        
        startTextField.placeholder = "Game Start Time"
        startTextField.textAlignment = NSTextAlignment.Center
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        let secondVC = segue.destinationViewController as! SecondViewController
            secondVC.firstVCText = textField.text!
        
            secondVC.awayTeam = awayTeamTextField.text!
        
            secondVC.halfTimeLength = halfLengthTextField.text!
    }
}

