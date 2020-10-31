//
//  Music.swift
//  27th_SOPT_iOS_3rdWeek_Seminar_Exercise
//
//  Created by 노한솔 on 2020/10/31.
//

import UIKit

struct Music {
  var title : String
  var singer : String
  var albumImageName : String
  
  func makeAlbumImage() -> UIImage? {
    return UIImage(named: albumImageName)
  }
}
