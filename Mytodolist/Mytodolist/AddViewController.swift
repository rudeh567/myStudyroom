//
//  AddViewController.swift
//  Mytodolist
//
//  Created by GSM08 on 2021/07/06.
//

import UIKit

class AddViewController: UIViewController {
    @IBOutlet var txtField: UITextField!
    @IBOutlet var txtView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        txtView.layer.borderColor = UIColor.gray.cgColor  // 테두리 색상
        txtView.layer.borderWidth = 0.3 // 테두리 두께
        txtView.layer.cornerRadius = 2.0  // 모서리 둥글게
        txtView.clipsToBounds = true  //
    }
    
    @IBAction func addList(_ sender: UIBarButtonItem) {
        
        let title = txtField.text!
        let content = txtView.text ?? ""
        
        let item: Todolist = Todolist(title: title, content: content)
        
        list.append(item)

        self.navigationController?.popViewController(animated: true)
    }
}
