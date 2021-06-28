//
//  ViewController.swift
//  imageViewer2
//
//  Created by GSM08 on 2021/06/28.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var imgView: UIImageView!
    
    var img1: UIImage? // "1.jpg" 이미지를 가지고 있는 UIImage 변수
    var img2: UIImage? // "2.jpg" 이미지를 가지고 있는 UIImage 변수
    var img3: UIImage? // "3.jpg" 이미지를 가지고 있는 UIImage 변수
    
    var imgPos = -1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        img1 = UIImage(named: "1.jpg") // img1에 "1.jpg" 이미지를 할당
        img2 = UIImage(named: "2.jpg") // img2에 "2.jpg" 이미지를 할당
        img3 = UIImage(named: "3.jpg") // img3에 "3.jpg" 이미지를 할당
        
        imgView.image = img1 // 위에서 할당한 img01 이미지를 imgView에 할당
        imgPos = 0 // 이미지 위치(포지션)는 0
    }
    
    @IBAction func btnBefore(_ sender: UIButton) {
        if imgPos == 0 { // 이미지 위치(포지션)가 0 일때
            imgView.image = img3 // 이미지 뷰에 img3 이미지를 할당
            imgPos = 2 // 이미지 위치(포지션)는 2
        }else if imgPos == 1 { // 이미지 위치(포지션)가 2 일때
            imgView.image = img1 // 이미지 뷰에 img1 이미지를 할당
            imgPos = 0 // 이미지 위치(포지션)는 0
        }else if imgPos == 2 { // 이미지 위치(포지션)가 2 일때
            imgView.image = img2 // 이미지 뷰에 img2 이미지를 할당
            imgPos = 1 // 이미지 위치(포지션)는 1
        }
    }
    
    @IBAction func btnNext(_ sender: UIButton) {
        if imgPos == 0 { // 이미지 위치(포지션)가 0 일때
            imgView.image = img2 // 이미지 뷰에 img2 이미지를 할당
            imgPos = 1 // 이미지 위치(포지션)는 1
        }else if imgPos == 1 { // 이미지 위치(포지션)가 1 일때
            imgView.image = img3 // 이미지 뷰에 img3 이미지를 할당
            imgPos = 2 // 이미지 위치(포지션)는 2
        }else if imgPos == 2 {// 이미지 위치(포지션)가 2 일때
            imgView.image = img1 // 이미지 뷰에 img1 이미지를 할당
            imgPos = 0 // 이미지 위치(포지션)는 0
        }
    }
    
}

