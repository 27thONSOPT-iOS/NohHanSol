//
//  YellowViewController.swift
//  27th_SOPT_iOS_1stWeek_Seminar_Exercise
//
//  Created by 노한솔 on 2020/10/10.
//  Copyright © 2020 노한솔. All rights reserved.
//

import UIKit

class YellowViewController: UIViewController {

  
  // MARK: - IBActions
  @IBAction func touchUpBack(_ sender: Any) {
//    self.dismiss(animated: true, completion: nil)
    self.navigationController?.popViewController(animated: true)
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
