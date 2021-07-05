//
//  ViewController.swift
//  PinchGesture
//
//  Created by GSM08 on 2021/07/05.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var txtPinch: UILabel!
    
    var initialFontSize:CGFloat!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let pinch = UIPinchGestureRecognizer(target: self, action: #selector(ViewController.doPinch(_:)))
        self.view.addGestureRecognizer(pinch)
    }

    @objc func doPinch(_ pinch: UIPinchGestureRecognizer) {
        if (pinch.state == UIPinchGestureRecognizer.State.began) {
            initialFontSize = txtPinch.font.pointSize
        } else {
            txtPinch.font = txtPinch.font.withSize(initialFontSize * pinch.scale)
        }
    }

}

