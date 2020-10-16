//
//  SecondViewController.swift
//  27th_SOPT_iOS_1stWeek_Seminar_Exercise
//
//  Created by 노한솔 on 2020/10/10.
//  Copyright © 2020 노한솔. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
  
  // MARK: - Vars
  var email : String?
  var isAutoUpdate : Bool?
  var updateInterval : Int?
  
  // MARK: - Functions
  func setLabel() {
    if let email = self.email,
      let isAutoUpdate = self.isAutoUpdate,
      let updateInterval = self.updateInterval {
      self.emailLabel.text = email
      self.emailLabel.sizeToFit()
      self.updateStateLabel.text = isAutoUpdate ? "On" : "Off"
      self.updateIntervalLabel.text = "\(updateInterval)분"
    }
  }
  
  // MARK: - IBOutlets
  @IBOutlet weak var emailLabel: UILabel!
  @IBOutlet weak var updateStateLabel: UILabel!
  @IBOutlet weak var updateIntervalLabel: UILabel!
  
  
  // MARK: - IBActions
  @IBAction func touchUpBack(_ sender: Any) {
    self.dismiss(animated: true, completion: nil)
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    setLabel()
    // Do any additional setup after loading the view.
  }
  
  
  /*
   // MARK: - Navigation
   
   // In a storyboard-based application, you will often want to do a little preparation before navigation
   override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
   // Get the new view controller using segue.destination.
   // Pass the selected object to the new view controller.
   }
   */
  
}
