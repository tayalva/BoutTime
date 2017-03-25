//
//  EndOfGameController.swift
//  Bout Time
//
//  Created by Taylor Smith on 3/25/17.
//  Copyright © 2017 Taylor Smith. All rights reserved.
//

import UIKit
import Foundation

class EndOfGameController: UIViewController {

    @IBOutlet weak var scoreLabel: UILabel!
    
    var score: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        scoreLabel.text = "You got \(score)/6 correct!"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

  
}
