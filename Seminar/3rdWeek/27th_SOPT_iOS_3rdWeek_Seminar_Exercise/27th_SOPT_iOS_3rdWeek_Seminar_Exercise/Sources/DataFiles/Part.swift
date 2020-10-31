//
//  Part.swift
//  27th_SOPT_iOS_3rdWeek_Seminar_Exercise
//
//  Created by 노한솔 on 2020/10/31.
//

import UIKit

struct Part {
  var imageName : String
  var partName : String
  
  func makeImage() -> UIImage? {
    return UIImage(named : imageName)
  }
}
