//
//  ViewController.swift
//  MyCustomAlert
//
//  Created by GSM08 on 2021/09/15.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var myButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        myButton.backgroundColor = .link
        myButton.setTitleColor(.white, for: .normal)
        myButton.setTitle("Show Alert", for: .normal)
    }

    @IBAction func didTapButton() {
        
    }

}

class MyAlert {
    
    struct Constants {
        static let backgroundAlphaTo: CGFloat = 0.6
    }
    
    private let backgroundView: UIView = {
        let backgroundView = UIView()
        backgroundView.backgroundColor = .black
        backgroundView.alpha = 0
        return backgroundView
    }()
    
    private let alertView: UIView = {
        let alert = UIView()
        alert.backgroundColor = .white
        alert.layer.masksToBounds = true
        alert.layer.cornerRadius = 12
        return alert
    }()
    
    static func showAlert(with title: String, message: String, on viewController: UIViewController) {
        
        guard let targetView = viewController.view else {
            
        }
        
        backgroundView.frame = targetView.bounds
        targetView?.addSubview(backgroundView)
        UIView.animate(withDuration: 0.25, animations: {
            
            self.backgroundView.alpha = Constants.back
        })
    }
    
    func dismissAlert() {
        
    }
    
}
