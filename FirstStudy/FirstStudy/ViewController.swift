//
//  ViewController.swift
//  FirstStudy
//
//  Created by GSM08 on 2021/06/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var hello: UILabel!
    @IBOutlet var txtName: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnSend(_ sender: UIButton) {
        hello.text = "Hello, " + txtName.text!
    }
    

}

