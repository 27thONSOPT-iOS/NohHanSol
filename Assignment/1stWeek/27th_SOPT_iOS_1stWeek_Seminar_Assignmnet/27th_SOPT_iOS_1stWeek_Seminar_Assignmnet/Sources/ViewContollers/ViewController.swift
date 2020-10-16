//
//  ViewController.swift
//  27th_SOPT_iOS_1stWeek_Seminar_Assignmnet
//
//  Created by 노한솔 on 2020/10/12.
//  Copyright © 2020 노한솔. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  // MARK: - Vars
  var part : String? = "iOS"
  var name : String? = "노한솔"
  
  // MARK: - IBOutlets
  @IBOutlet weak var partLabel: UILabel!
  @IBOutlet weak var textLabel: UILabel!
  
  func setLabel() {
    self.partLabel.text = self.part
    guard let username = self.name else {
      return
    }
    self.textLabel.text = "\(String(username))님 안녕하세요~"
    if self.part == Optional("") {
      self.partLabel.text = "iOS"
    }
    if self.name == Optional("") {
      self.textLabel.text = "노한솔님 안녕하세요~"
    }
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    setLabel()
    // Do any additional setup after loading the view.
  }
  
  override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(animated)
    self.reloadInputViews()
    setLabel()
  }
  
}

