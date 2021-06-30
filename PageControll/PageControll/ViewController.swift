//
//  ViewController.swift
//  PageControll
//
//  Created by GSM08 on 2021/06/30.
//

import UIKit

let NUM_PAGE = 10

class ViewController: UIViewController {
    
    @IBOutlet var pageNumber: UILabel!
    @IBOutlet var pageControl: UIPageControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        pageControl.numberOfPages = NUM_PAGE
        
        pageControl.currentPage = 0
        
        pageControl.pageIndicatorTintColor = UIColor.green
        
        pageControl.currentPageIndicatorTintColor = UIColor.red
        
        pageNumber.text = String(pageControl.currentPage+1)
    }

    @IBAction func pageChange(_ sender: UIPageControl) {
        pageNumber.text = String(pageControl.currentPage+1)
    }
    
}

