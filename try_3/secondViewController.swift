//
//  secondViewController.swift
//  try_3
//
//  Created by Hector Otero on 12/7/15.
//  Copyright © 2015 Larsen & McDermott Enterprises, LLC. All rights reserved.
//

import Foundation
import UIKit

class SecondViewController: UIViewController{
    
    @IBOutlet weak var textFromFirstLabel: UILabel!
    @IBOutlet weak var awayTeamLabel: UILabel!
    
    var firstVCText = ""
    var awayTeam = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
        textFromFirstLabel.text = firstVCText
        awayTeamLabel.text = awayTeam
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
    }
}