//
//  InputViewController.swift
//  27th_SOPT_iOS_2ndWeek_Seminar_Assignmnet
//
//  Created by 노한솔 on 2020/11/14.
//

import UIKit

class InputViewController: UIViewController {
  
  // MARK: - Vars
  var part : String? = "iOS"
  var name : String? = "노한솔"
  
  // MARK: - IBOutlets
  @IBOutlet weak var partField: UITextField!
  @IBOutlet weak var nameField: UITextField!
  
  @IBAction func touchUpLogined(_ sender: Any) {
    self.name = self.nameField.text
    self.part = self.partField.text
    guard let lvc = self.storyboard?.instantiateViewController(identifier: "LoginViewController") as? LoginViewController else {
      return
    }
    lvc.name = self.name
    lvc.part = self.part
    self.dismiss(animated: true, completion: nil)
  }
  
  // MARK: - App LifeCycle
  override func viewDidLoad() {
    super.viewDidLoad()
    
    NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow(_:)), name: UIResponder.keyboardWillShowNotification, object: nil)
    
    NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide(_:)), name: UIResponder.keyboardWillHideNotification, object: nil)
    
    self.partField.delegate = self
    self.nameField.delegate = self
  }
  
}

extension InputViewController: UITextFieldDelegate {
  func textFieldShouldReturn(_ textField: UITextField) -> Bool {
    textField.resignFirstResponder()
    return true
  }
  
  override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?){
    self.view.endEditing(true)
  }
  @objc func keyboardWillShow(_ sender: Notification) {
    self.view.frame.origin.y = -150
  }
  @objc func keyboardWillHide(_ sender: Notification) {
    self.view.frame.origin.y = 0
  }
}

