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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        let secondVC = segue.destinationViewController as! SecondViewController
            secondVC.firstVCText = textField.text!
        
            secondVC.awayTeam = awayTeamTextField.text!
    }


}

