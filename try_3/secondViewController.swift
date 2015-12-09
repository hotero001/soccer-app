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
    @IBOutlet weak var countDownButton: UIButton!
    @IBOutlet weak var stopCountButton: UIButton!
    @IBOutlet weak var restartTimeButton: UIButton!
    @IBOutlet weak var homeTeamScore: UILabel!
    @IBOutlet weak var awayTeamScore: UILabel!
    @IBOutlet weak var modifyHomeTeamScoreButton: UIButton!
    @IBOutlet weak var modifyAwayTeamScoreButton: UIButton!
    @IBOutlet weak var homeTeamBookingButton: UIButton!
    @IBOutlet weak var awayTeamBookingButton: UIButton!
    @IBOutlet weak var homeTeamScoreStepper: UIStepper!
    @IBOutlet weak var awayTeamScoreStepper: UIStepper!
    
    @IBOutlet weak var pressDoneAwayButton: UIButton!
    
    
    //How to Make the team score scrollable when the add score button is pushed? Then set it to the score it was left on and deactivate the scrollability by pressing Add Score again
    
    
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
        
        countDownButton.setTitle("Start", forState:.Normal)
        stopCountButton.setTitle("Stop", forState:.Normal)
        restartTimeButton.setTitle("Reset Time", forState:.Normal)
        
        homeTeamScore.text = "\(0)"
        awayTeamScore.text = "\(0)"
        
        modifyHomeTeamScoreButton.setTitle("Add Score", forState:.Normal)
        modifyAwayTeamScoreButton.setTitle("Add Score", forState:.Normal)
        
        homeTeamBookingButton.setTitle("Add Booking", forState:.Normal)
        awayTeamBookingButton.setTitle("Add Booking", forState:.Normal)
        
        homeTeamScoreStepper.enabled = false
        awayTeamScoreStepper.enabled = false
        
        pressDoneAwayButton.setTitle("Press when done", forState:.Normal)
        pressDoneAwayButton.hidden = true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
    }
    
    @IBAction func startTimer(sender: AnyObject){
        if !timer.valid{
            //var view = UIView()
            //view = sender as! UIView
            //view.userInteractionEnabled = true
            timer = NSTimer.scheduledTimerWithTimeInterval(1.0, target: self, selector: "countDown", userInfo: nil, repeats: true)
            //view.userInteractionEnabled = false
            countDownButton.enabled = false
        }
    }

    
    @IBAction func stopTimer(sender: AnyObject) {
        timer.invalidate()
        //let time = Int(halfTimeLength)
        //counter = Int(halfTimeLength)!
        countDownButton.enabled = true
    }
    
    @IBAction func resetTimer(sender: AnyObject) {
        counter = Int(halfTimeLength)
        timerLabel.text = halfTimeLength
        //resetTime = NSTimer.scheduledTimerWithTimeInterval(1.0, target: self, selector: "restartDown", userInfo: nil,)
    }
    
    @IBAction func addHomeScore(sender: AnyObject) {
        homeTeamScoreStepper.enabled = true
        modifyHomeTeamScoreButton.setTitle("Press when Done", forState:.Normal)
    }
    
    @IBAction func addAwayScore(sender: AnyObject) {
        pressDoneAwayButton.hidden = false
        awayTeamScoreStepper.enabled = true
        modifyAwayTeamScoreButton.hidden = true
    }
    
    @IBAction func stopAddAwayScore(sender: AnyObject) {
        awayTeamScoreStepper.enabled = false
        modifyAwayTeamScoreButton.hidden = false
        pressDoneAwayButton.hidden = true
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