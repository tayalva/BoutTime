//
//  ViewController.swift
//  Bout Time
//
//  Created by Taylor Smith on 3/20/17.
//  Copyright © 2017 Taylor Smith. All rights reserved.
//

import UIKit
import GameKit
import AudioToolbox

class ViewController: UIViewController {
    
    var indexOfSelectedEvents1: Int = 0
    var indexOfSelectedEvents2: Int = 0
    var indexOfSelectedEvents3: Int = 0
    var indexOfSelectedEvents4: Int = 0
    
    var yearOfEvent1: Int = 0
    var yearOfEvent2: Int = 0
    var yearOfEvent3: Int = 0
    var yearOfEvent4: Int = 0
    var orderOfEventsArray: [Int] = []
    var userOrder: [Int] = []
    var correctOrder: [Int] = []
    var score = 0
    var roundNumber = 6
    
    
    @IBOutlet weak var down1: UIButton!
    @IBOutlet weak var up2: UIButton!
    @IBOutlet weak var down2: UIButton!
    @IBOutlet weak var up3: UIButton!
    @IBOutlet weak var down3: UIButton!
    @IBOutlet weak var up4: UIButton!
    @IBOutlet weak var eventLabel1: UILabel!
    @IBOutlet weak var eventLabel2: UILabel!
    @IBOutlet weak var eventLabel3: UILabel!
    @IBOutlet weak var eventLabel4: UILabel!
    @IBOutlet weak var timerLabel: UILabel!
    @IBOutlet weak var nextRoundButton: UIButton!
    @IBOutlet weak var playAgainButton: UIButton!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
       newGame()
        
    }
    
    override func motionBegan(_ motion: UIEventSubtype, with event: UIEvent?) {
        
        
        // this vibrates the devices whenvever you shake it..you know..for fun. :)
        
        AudioServicesPlayAlertSound(kSystemSoundID_Vibrate)
        
        checkAnswers()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func displayEvents () {
        
        indexOfSelectedEvents1 = GKRandomSource.sharedRandom().nextInt(upperBound: eventsIndexArray.count)
        
            let eventsDictionary1 = eventsIndexArray[indexOfSelectedEvents1]
            eventLabel1.text = eventsDictionary1.event
            yearOfEvent1 = eventsDictionary1.year
            orderOfEventsArray.append(yearOfEvent1)
            eventsIndexArray.remove(at: indexOfSelectedEvents1)
        
        indexOfSelectedEvents2 = GKRandomSource.sharedRandom().nextInt(upperBound: eventsIndexArray.count)
        
            let eventsDictionary2 = eventsIndexArray[indexOfSelectedEvents2]
            eventLabel2.text = eventsDictionary2.event
            yearOfEvent2 = eventsDictionary2.year
            orderOfEventsArray.append(yearOfEvent2)
            eventsIndexArray.remove(at: indexOfSelectedEvents2)
        
        indexOfSelectedEvents3 = GKRandomSource.sharedRandom().nextInt(upperBound: eventsIndexArray.count)
        
            let eventsDictionary3 = eventsIndexArray[indexOfSelectedEvents3]
            eventLabel3.text = eventsDictionary3.event
            yearOfEvent3 = eventsDictionary3.year
            orderOfEventsArray.append(yearOfEvent3)
            eventsIndexArray.remove(at: indexOfSelectedEvents3)
        
        indexOfSelectedEvents4 = GKRandomSource.sharedRandom().nextInt(upperBound: eventsIndexArray.count)
    
        
            let eventsDictionary4 = eventsIndexArray[indexOfSelectedEvents4]
            eventLabel4.text = eventsDictionary4.event
            yearOfEvent4 = eventsDictionary4.year
            orderOfEventsArray.append(yearOfEvent4)
            eventsIndexArray.remove(at: indexOfSelectedEvents4)
        
        
       userOrder = [yearOfEvent1, yearOfEvent2, yearOfEvent3, yearOfEvent4]
        
    }
    
    @IBAction func down1Button(_ sender: Any) {
        
        down1.setImage(UIImage(named: "down_full_selected.png"), for: UIControlState.normal)
        
        

    }
  
    @IBAction func Down1ButtonRelease(_ sender: Any) {
        
        down1.setImage(UIImage(named: "down_full.png"), for: UIControlState.normal)

    }

    @IBAction func moveEvent(_ sender: Any) {
        
        guard let button = sender as? UIButton else {
            
            return
        }
        
        switch button.tag {
            
        case 1:
            swap(&eventLabel1.text, &eventLabel2.text)
            swap(&yearOfEvent1, &yearOfEvent2)
        case 2:
            swap(&eventLabel1.text, &eventLabel2.text)
            swap(&yearOfEvent1, &yearOfEvent2)
        case 3:
            swap(&eventLabel2.text, &eventLabel3.text)
            swap(&yearOfEvent2, &yearOfEvent3)
        case 4:
            swap(&eventLabel2.text, &eventLabel3.text)
            swap(&yearOfEvent2, &yearOfEvent3)
        case 5:
            swap(&eventLabel3.text, &eventLabel4.text)
            swap(&yearOfEvent3, &yearOfEvent4)
        case 6:
            swap(&eventLabel4.text, &eventLabel3.text)
            swap(&yearOfEvent4, &yearOfEvent3)
        default:
            
            print("whoopsies")
            return
        }
        
       userOrder = [yearOfEvent1, yearOfEvent2, yearOfEvent3, yearOfEvent4]
        
    }
    
    // Checks to see if the events are in the correct order
    
    func checkAnswers() {
        
        correctOrder = orderOfEventsArray.sorted()
        nextRoundButton.isHidden = false
        timerLabel.isHidden = true
        
        if (correctOrder == userOrder) {
            
            print("These are all correct!")
            nextRoundButton.setImage(UIImage(named: "next_round_success.png"), for: UIControlState.normal)
            score += 1

            
        } else {
            
            print("These are not in the correct order")
            nextRoundButton.setImage(UIImage(named: "next_round_fail.png"), for: UIControlState.normal)
        }
        
    }
    
    @IBAction func nextRoundButton(_ sender: Any) {
      
        nextRound()
        
    }
    
    
    func nextRound() {
        
        nextRoundButton.isHidden = true
        resetEvents()
        displayEvents()
        roundNumber += 1
        timerLabel.isHidden = false
        
    }
    
    func newGame() {
        roundNumber = 0
        playAgainButton.isHidden = true
        nextRoundButton.isHidden = true
        nextRound()
    }

}

