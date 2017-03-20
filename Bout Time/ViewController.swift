//
//  ViewController.swift
//  Bout Time
//
//  Created by Taylor Smith on 3/20/17.
//  Copyright © 2017 Taylor Smith. All rights reserved.
//

import UIKit
import QuartzCore

class ViewController: UIViewController {
    @IBOutlet weak var up4: UIButton!
    @IBOutlet weak var eventLabel1: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        up4.setImage(UIImage(named: "up_full_selected.png"), for: UIControlState.normal)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

