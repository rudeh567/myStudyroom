//
//  ViewController.swift
//  DatePicker
//
//  Created by GSM08 on 2021/06/28.
//

import UIKit

class DateViewController: UIViewController {
    let timeSelector: Selector = #selector(DateViewController.updateTime)
    let interval = 1.0
    var count = 0
    var alarmTime: String?
    var alertFlag = false
    
    @IBOutlet var IbICurrentTime: UILabel!
    @IBOutlet var IbIPickerTime: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        Timer.scheduledTimer(timeInterval: interval, target: self, selector: timeSelector, userInfo: nil, repeats: true)
    }

    @IBAction func changeDatePicker(_ sender: UIDatePicker) {
        let datePickerView = sender
        
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm EEE"
        IbIPickerTime.text = "선택시간 : " + formatter.string(from: datePickerView.date)
        
        alarmTime = formatter.string(from: datePickerView.date)
    }
    
    @objc func updateTime() {
        let date = NSDate()
        
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm EEE"
        IbICurrentTime.text = "현재시간 : " + formatter.string(from: date as Date)
        
        let currentTime = formatter.string(from: date as Date)
        
        if alarmTime == currentTime {
            if !alertFlag {
                let alarmAlert = UIAlertController(title: "알림", message: "설정된 시간입니다!!", preferredStyle: UIAlertController.Style.alert)
                
                let alarmAction = UIAlertAction(title: "네, 알겠습니다.", style: UIAlertAction.Style.default, handler: nil)
                
                alarmAlert.addAction(alarmAction)
                present(alarmAlert, animated: true, completion: nil)
                alertFlag = true
            }
        } else {
            alertFlag = false
        }
     
    }
    
}

