//
//  ResultViewController.swift
//  27th_SOPT_iOS_1stWeek_Seminar_Assignmnet
//
//  Created by 노한솔 on 2020/10/12.
//  Copyright © 2020 노한솔. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

  
  // MARK: - Vars
  var part : String? = "iOS"
  var name : String? = "노한솔"
  
  // MARK: - IBOutlets
  @IBOutlet weak var partTextField: UITextField!
  @IBOutlet weak var nameTextField: UITextField!
  
  // MARK: - IBActions
  @IBAction func touchUpSignIn(_ sender: UIButton) {
    guard let signInVC = self.storyboard?.instantiateViewController(identifier: "SignInViewController")as? SignInViewController else {
      return
    }
    self.navigationController?.pushViewController(signInVC, animated: true)
    
  }
  @IBAction func touchUpBack(_ sender: Any) {
    self.part = self.partTextField.text
    self.name = self.nameTextField.text
    guard let firstVC = presentingViewController as? ViewController else {
      return
    }
    firstVC.name = self.name
    firstVC.part = self.part
    self.dismiss(animated: true, completion: nil)
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
