//
//  ViewController.swift
//  Bout Time
//
//  Created by Taylor Smith on 3/20/17.
//  Copyright © 2017 Taylor Smith. All rights reserved.
//

import UIKit
import GameKit

class ViewController: UIViewController {
    
    var indexOfSelectedEvents1: Int = 0
    var indexOfSelectedEvents2: Int = 0
    var indexOfSelectedEvents3: Int = 0
    var indexOfSelectedEvents4: Int = 0
    
    
    
    @IBOutlet weak var up4: UIButton!
    @IBOutlet weak var eventLabel1: UILabel!
    @IBOutlet weak var eventLabel2: UILabel!
    @IBOutlet weak var eventLabel3: UILabel!
    @IBOutlet weak var eventLabel4: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        up4.setImage(UIImage(named: "up_full_selected.png"), for: UIControlState.normal)
        
        
        resetEvents()
        displayEvents()
    
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func displayEvents () {
        
        indexOfSelectedEvents1 = GKRandomSource.sharedRandom().nextInt(upperBound: eventsIndexArray.count)
        
        let eventsDictionary1 = eventsIndexArray[indexOfSelectedEvents1]
        
        eventLabel1.text = eventsDictionary1.event
        
        eventsIndexArray.remove(at: indexOfSelectedEvents1)
        
           indexOfSelectedEvents2 = GKRandomSource.sharedRandom().nextInt(upperBound: eventsIndexArray.count)
        
        let eventsDictionary2 = eventsIndexArray[indexOfSelectedEvents2]
        
        eventLabel2.text = eventsDictionary2.event
         eventsIndexArray.remove(at: indexOfSelectedEvents2)
        
           indexOfSelectedEvents3 = GKRandomSource.sharedRandom().nextInt(upperBound: eventsIndexArray.count)
        
        let eventsDictionary3 = eventsIndexArray[indexOfSelectedEvents3]
        
        eventLabel3.text = eventsDictionary3.event
       eventsIndexArray.remove(at: indexOfSelectedEvents3)
        
           indexOfSelectedEvents4 = GKRandomSource.sharedRandom().nextInt(upperBound: eventsIndexArray.count)
    
        
        let eventsDictionary4 = eventsIndexArray[indexOfSelectedEvents4]
        
        eventLabel4.text = eventsDictionary4.event
         eventsIndexArray.remove(at: indexOfSelectedEvents4)
    
        
    }

    @IBAction func test(_ sender: Any) {
        
        resetEvents()
        displayEvents()
    }

}

