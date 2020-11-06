//
//  Block.swift
//  27th_SOPT_iOS_2ndWeek_Seminar_Assignmnet
//
//  Created by 노한솔 on 2020/11/04.
//

import UIKit

struct Block {
  var imageName : String
  var memberName : String
  var hash : String
  
  func makeImage() -> UIImage? {
    return UIImage(named: imageName)
  }
}
