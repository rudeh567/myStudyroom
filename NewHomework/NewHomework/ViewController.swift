//
//  ViewController.swift
//  NewHomework
//
//  Created by GSM08 on 2021/06/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func Red(_ sender: UIButton) {
        self.view.backgroundColor = UIColor.red
    }
    
    @IBAction func Blue(_ sender: UIButton) {
        self.view.backgroundColor = UIColor.blue
    }
    
    @IBAction func Yellow(_ sender: UIButton) {
        self.view.backgroundColor = UIColor.yellow
    }
    
    @IBAction func Black(_ sender: UIButton) {
        self.view.backgroundColor = UIColor.black
    }
    
}

