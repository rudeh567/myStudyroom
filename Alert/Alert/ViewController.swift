//
//  ViewController.swift
//  Alert
//
//  Created by GSM08 on 2021/06/29.
//

import UIKit

class ViewController: UIViewController {
    
    let imgOn = UIImage(named: "cat.jpg")
    let imgOff = UIImage(named: "dog.jpg")
    let imgRemove = UIImage(named: "gasi.jgp")
    
    var isLampOn = true
    
    @IBOutlet var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        imageView.image = imgOn
    }

    @IBAction func btnLampOn(_ sender: UIButton) {
        if (isLampOn==true) {
            let lampOnAlert = UIAlertController(title: "경고", message: "현재 On 상태입니다", preferredStyle: UIAlertController.Style.alert)
            let onAction = UIAlertAction(title: "네 알겠습니다.", style: UIAlertAction.Style.default, handler: nil)
            lampOnAlert.addAction(onAction)
            present(lampOnAlert, animated: true, completion: nil)
        } else {
            imageView.image = imgOn
            isLampOn = true
        }
    }
    
    @IBAction func btnLampOff(_ sender: UIButton) {
        if isLampOn {
            let lampOffAlert = UIAlertController (title: "램프 끄기", message: "램프를 끄시겟습니까?", preferredStyle: UIAlertController.Style.alert)
            
            let offAction = UIAlertAction (title: "네", style: UIAlertAction.Style.default, handler: {ACTION in self.imageView.image = self.imgOff;self.isLampOn=false})
            
            let cancelAction = UIAlertAction (title: "아니오", style: UIAlertAction.Style.default, handler: nil)
            
            lampOffAlert.addAction(offAction)
            lampOffAlert.addAction(cancelAction)
            
            present(lampOffAlert, animated: true, completion: nil)
        }
    }
    
    @IBAction func btnLampRemove(_ sender: UIButton) {
        let lampRemoveAlert = UIAlertController(title: "램프 제거", message: "램프를 제거하시겠습니까?", preferredStyle: UIAlertController.Style.alert)
        
        let offAction = UIAlertAction(title: "아니오, 끕니다(off).", style: UIAlertAction.Style.default, handler: {ACTION in self.imageView.image = self.imgOff;self.isLampOn=false})
        
        let onAction = UIAlertAction(title: "네, 켭니다(on)", style: UIAlertAction.Style.default, handler: {ACTION in self.imageView.image = self.imgOn;self.isLampOn=true})
        
        let removeAction = UIAlertAction(title: "네 제거합니다.", style: UIAlertAction.Style.destructive, handler: {ACTION in self.imageView.image = self.imgRemove;self.isLampOn=false})
        
        lampRemoveAlert.addAction(offAction)
        lampRemoveAlert.addAction(onAction)
        lampRemoveAlert.addAction(removeAction)
        present(lampRemoveAlert, animated: true, completion: nil)
    }
    
}

