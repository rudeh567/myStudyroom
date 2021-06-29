//
//  ViewController.swift
//  WebApp
//
//  Created by GSM08 on 2021/06/29.
//

import UIKit
import WebKit

class ViewController: UIViewController {
    @IBOutlet var myWebView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let filePath = Bundle.main.path(forResource: "htmlView", ofType: "html")
        let myUrl = URL(fileURLWithPath: filePath!)
        let myRequest = URLRequest(url: myUrl)
        myWebView.load(myRequest)
    }


}

