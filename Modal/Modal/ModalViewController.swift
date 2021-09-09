//
//  ModalViewController.swift
//  Modal
//
//  Created by GSM08 on 2021/09/07.
//

import UIKit

class ModalViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func dismissModal(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
