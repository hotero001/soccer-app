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
    @IBOutlet weak var timerLabel: UILabel!
    
    
    var firstVCText = ""
    var awayTeam = ""
    var halfTimeLength = ""
    
    var counter:Int?
    //var counter = Int(halfTimeLength)
    var timer = NSTimer()

    override func viewDidLoad() {
        super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
        textFromFirstLabel.text = firstVCText
        awayTeamLabel.text = awayTeam
        timerLabel.text = halfTimeLength
        counter = Int(halfTimeLength)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
    }
    
    @IBAction func startTimer(sender: AnyObject){
        if !timer.valid{
            var view = UIView()
            view = sender as! UIView
            view.userInteractionEnabled = true
            timer = NSTimer.scheduledTimerWithTimeInterval(1.0, target: self, selector: "countDown", userInfo: nil, repeats: true)
            view.userInteractionEnabled = false
        }
    }

    
    @IBAction func stopTimer(sender: AnyObject) {
        timer.invalidate()
        //let time = Int(halfTimeLength)
        //counter = Int(halfTimeLength)!
    }
    
    func countDown() {
        counter = counter! - 1
        if (counter == 0){
            counter = 0
        }
        updateText()
    }
    
    func updateText(){
        let _:Int?
        timerLabel.text = String(counter!)
    }
    
}