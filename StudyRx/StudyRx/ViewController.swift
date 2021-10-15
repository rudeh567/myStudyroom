//
//  ViewController.swift
//  StudyRx
//
//  Created by yeoboya on 2021/10/15.
//

import UIKit
import RxSwift
import RxCocoa

class ViewController: UIViewController {
  var disposeBag: DisposeBag = DisposeBag()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    checkArrayObservable(items: [4, 3, 0, 5, 2])
      .subscribe { event in
        switch event {
        case .next(let value):
          print(value)
        case .error(let error):
          print(error)
        case .completed:
          print("completed")
        }
      }
      .disposed(by: self.disposeBag)
  }
  
  func checkArrayObservable(items: [Int]) -> Observable<Int> {
    return Observable<Int>.create { observer -> Disposable in
      
      for item in items {
        if item == 0 {
          observer.onError(NSError(domain: "ERROR: value is zero.", code: 0, userInfo: nil))
          break
        }
        
        observer.onNext(item)
        
        sleep(1)
      }
      
      observer.onCompleted()
      
      return Disposables.create()
    }
  }
}

