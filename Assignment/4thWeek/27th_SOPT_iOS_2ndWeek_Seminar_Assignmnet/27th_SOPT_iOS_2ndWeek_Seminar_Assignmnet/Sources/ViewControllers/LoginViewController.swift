//
//  LoginViewController.swift
//  27th_SOPT_iOS_2ndWeek_Seminar_Assignmnet
//
//  Created by 노한솔 on 2020/11/14.
//

import UIKit

class LoginViewController: UIViewController {
  
  // MARK: - Vars
  var part : String? = "iOS"
  var name : String? = "노한솔"
  
  // MARK: - IBOutlets
  @IBOutlet weak var partLabel: UILabel!
  @IBOutlet weak var nameLabel: UILabel!
  
  @IBAction func touchUpLogin(_ sender: Any) {
    guard let ivc = self.storyboard?.instantiateViewController(identifier: "InputViewController") as? InputViewController else {
      return
    }
    ivc.modalPresentationStyle = .fullScreen
    self.present(ivc, animated: true, completion: nil)
  }
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    self.partLabel.text = self.part
    self.nameLabel.text = self.name
    // Do any additional setup after loading the view.
  }
  
  override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(animated)
    self.partLabel.text = self.part
    self.nameLabel.text = self.name
    self.reloadInputViews()
 
    
  }
  
}
