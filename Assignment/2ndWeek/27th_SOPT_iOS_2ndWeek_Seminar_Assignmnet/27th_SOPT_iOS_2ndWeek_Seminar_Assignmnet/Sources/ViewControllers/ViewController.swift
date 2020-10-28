//
//  ViewController.swift
//  27th_SOPT_iOS_2ndWeek_Seminar_Assignmnet
//
//  Created by 노한솔 on 2020/10/27.
//

import UIKit

class ViewController: UIViewController {
  
  // MARK: - IBOutlets
  @IBOutlet weak var networkScrollView: UIScrollView!
  @IBOutlet weak var topButton: UIButton!
  
  // MARK: - IBActions
  @IBAction func touchUpToTop(_ sender: Any) {
    self.networkScrollView.setContentOffset(CGPoint.zero, animated: false)
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    self.topButton.layer.cornerRadius = self.topButton.frame.height*1/2
    self.topButton.isHidden = true
    self.networkScrollView.delegate = self
    // Do any additional setup after loading the view.
  }
  
  
}

extension ViewController:UIScrollViewDelegate {
  func scrollViewDidScroll(_ scrollView: UIScrollView) {
    if networkScrollView.contentOffset.y > 420 {
      self.topButton.isHidden = false
    }
    else {
      self.topButton.isHidden = true
    }
  }
}
