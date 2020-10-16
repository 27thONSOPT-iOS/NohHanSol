//
//  ViewController.swift
//  27th_SOPT_iOS_1stWeek_Seminar_Exercise
//
//  Created by 노한솔 on 2020/10/10.
//  Copyright © 2020 노한솔. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  //MARK: - IBOutlets
  @IBOutlet weak var helloLabel: UILabel!
  
  //MARK: - IBActions
  @IBAction func touchUpClick(_ sender: Any) {
    helloLabel.text = "Hello ON SOPT!!"
    helloLabel.sizeToFit()
  }
  
  @IBAction func touchUpMove(_ sender: Any) {
    guard let yellowVC = self.storyboard?.instantiateViewController(identifier: "YellowViewController") else {
      return
    }
    self.navigationController?.pushViewController(yellowVC, animated: true)
//    self.present(yellowVC, animated: true, completion: nil)

  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
  }


}

