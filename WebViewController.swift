//
//  WebViewController.swift
//  Bout Time
//
//  Created by Taylor Smith on 3/24/17.
//  Copyright © 2017 Taylor Smith. All rights reserved.
//

import UIKit

class WebViewController: UIViewController {

    @IBOutlet weak var webView: UIWebView!
    
    var urlString: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
    }

//loads url into the webview
    
    override func viewDidAppear(_ animated: Bool) {
        
        
        guard let urlString = urlString else { return }
        let url = URL(string: urlString)
        let request = URLRequest(url: url!)
        webView.loadRequest(request)
        
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

 // goes back to the game
    
    @IBAction func backToGame(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
    }

}
