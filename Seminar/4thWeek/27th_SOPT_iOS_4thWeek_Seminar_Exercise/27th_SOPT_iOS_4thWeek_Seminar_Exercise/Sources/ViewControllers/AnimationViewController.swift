//
//  AnimationViewController.swift
//  27th_SOPT_iOS_4thWeek_Seminar_Exercise
//
//  Created by 노한솔 on 2020/11/07.
//

import UIKit
import RxSwift

class AnimationViewController: UIViewController {
  
  // MARK: - Variables
  var count : [Int] = [0,0,0]
  
  // MARK: - Functions
  func initPosition() {
    ryanImageView.frame = CGRect(x: 57, y: 257, width: 244, height: 200)
  }
  func showToast(controller: UIViewController, message: String, seconds: Double) -> Observable<Any> {
    return Observable.create() { emitter in
      let alert = UIAlertController(title: nil, message: message, preferredStyle: .alert)
      alert.view.backgroundColor = UIColor.black
      alert.view.alpha = 0.6
      alert.view.layer.cornerRadius = 15
      
      controller.present(alert, animated: true, completion: nil)
      
      emitter.onNext(alert.dismiss(animated: true, completion: nil))
      emitter.onCompleted()
      
      return Disposables.create()
    }
    
    
  }
  
  // MARK: - IBOutlets
  @IBOutlet weak var ryanImageView: UIImageView!
  
  
  // MARK: - IBActions
  @IBAction func setAnimating(_ sender: Any) {
    count[0] = 1
    DispatchQueue.main.async {
      UIView.animate(withDuration: 3.0, animations: {
        self.ryanImageView.alpha = 0
      }) { finished in
        UIView.animate(withDuration: 1.0, animations: {
          self.ryanImageView.alpha = 1
        })
      }
    }
  }
  @IBAction func setMoving(_ sender: Any) {
    count[1] = 1
    let newPosition = CGRect(x: 20, y: 359, width: 244, height: 200)
    DispatchQueue.main.async {
      UIView.animate(withDuration: 3.0, animations: {
        self.ryanImageView.frame = newPosition
      }) { finished in
        UIView.animate(withDuration: 2.0, animations: {
          self.initPosition()
        })
      }
    }
  }
  @IBAction func setBoth(_ sender: Any) {
    count[2] = 1
    let scale = CGAffineTransform(scaleX: 0.5, y: 0.5)
    let rotate = CGAffineTransform(rotationAngle: .pi / 4)
    let move = CGAffineTransform(translationX: 200, y: 200)
    let combine = scale.concatenating(move).concatenating(rotate)
    DispatchQueue.main.async {
      UIView.animate(withDuration: 1.0, animations: {
        self.ryanImageView.transform = combine
      }) { finished in
        UIView.animate(withDuration: 1.0) {
          self.ryanImageView.transform = .identity
        }
      }
    }
    
  }
  
  // MARK: - LifeCycles
  override func viewDidLoad() {
    super.viewDidLoad()
  }
  
  override func viewWillLayoutSubviews() {
    super.viewWillLayoutSubviews()
    if count.allSatisfy({$0 >= 1}) {
      showToast(controller: self, message: "성공!!! 쨕쨕쨕!!!", seconds: 2.0)
      count.removeAll()
    }
  }
}
