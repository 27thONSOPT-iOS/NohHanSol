//
//  PartBannerCell.swift
//  27th_SOPT_iOS_3rdWeek_Seminar_Exercise
//
//  Created by 노한솔 on 2020/10/31.
//

import UIKit

class PartBannerCell: UICollectionViewCell {
    static let identifier = "PartBannerCell"
  
  // MARK: - IBOutlets
  @IBOutlet weak var partImageView: UIImageView!
  
  // MARK: - Funcs
  func setImage(imageName: String) {
    partImageView.image = UIImage(named: imageName)
  }
}
