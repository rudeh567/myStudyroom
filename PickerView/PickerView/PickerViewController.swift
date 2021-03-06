//
//  ViewController.swift
//  PickerView
//
//  Created by GSM08 on 2021/06/28.
//

import UIKit

class PickerViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    let MAX_ARRAY_NUM = 10
    let PICKER_VIEW_COLUMN = 2
    var imageArray = [UIImage?]()
    var imageFileName = [ "1.jpg", "2.jpg", "3.jpg", "4.jpg", "5.jpg", "6.jpg", "7.jpg", "8.png", "9.jpg", "10.jpg" ]
    
    @IBOutlet var pickerView: UIPickerView!
    @IBOutlet var IbIImageFileName: UILabel!
    @IBOutlet var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        for i in 0 ..< MAX_ARRAY_NUM {
            let image = UIImage(named: imageFileName[i])
            imageArray.append(image)
        }
        
        IbIImageFileName.text = imageFileName[0]
        imageView.image = imageArray[0]
        
    }

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return PICKER_VIEW_COLUMN
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return imageFileName.count
    }
    
  //  func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent conponent: Int) -> String? {
  //      return imageFileName[row]
  //  }
    
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        let imageView = UIImageView(image: imageArray[row])
        imageView.frame = CGRect(x: 0, y: 0, width: 100, height: 150)
        
        return imageView
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent conponent: Int) {
        
        if conponent == 0 {
            IbIImageFileName.text = imageFileName[row]
        } else {
            imageView.image = imageArray[row]
        }
        
    }
    
}


