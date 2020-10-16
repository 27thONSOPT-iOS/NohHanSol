//
//  FirstViewController.swift
//  27th_SOPT_iOS_1stWeek_Seminar_Exercise
//
//  Created by 노한솔 on 2020/10/10.
//  Copyright © 2020 노한솔. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
  
  // MARK: - IBOutlets
  @IBOutlet weak var emailTextField: UITextField!
  @IBOutlet weak var updateStateLabel: UILabel!
  @IBOutlet weak var updateIntervalLabel: UILabel!
  @IBOutlet weak var updateStateSwitch: UISwitch!
  @IBOutlet weak var updateIntervalStepper: UIStepper!
  
  // MARK: - IBActions
  @IBAction func valueChangedSwitch(_ sender: UISwitch) {
    if sender.isOn {
      self.updateStateLabel.text = "자동 갱신"
    }
    else {
      self.updateStateLabel.text = "수동 갱신"
    }
  }
  @IBAction func valueChangedStepper(_ sender: UIStepper) {
    updateIntervalLabel.text = "\(Int(sender.value)) 분 마다"
  }
  @IBAction func touchUpSubmit(_ sender: Any) {
    guard let secondVC = self.storyboard?.instantiateViewController(identifier: "SecondViewController")as? SecondViewController else {
      return
    }
    secondVC.email = self.emailTextField.text
    secondVC.isAutoUpdate = self.updateStateSwitch.isOn
    secondVC.updateInterval = Int(self.updateIntervalStepper.value)
    secondVC.modalPresentationStyle = .fullScreen
    self.present(secondVC, animated: true, completion: nil)
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
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
