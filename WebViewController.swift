//
//  WebViewController.swift
//  Bout Time
//
//  Created by Taylor Smith on 3/24/17.
//  Copyright © 2017 Taylor Smith. All rights reserved.
//

import UIKit

class WebViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

  
    @IBAction func backToGame(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
    }

}
