//
//  NetworkCollectionViewCell.swift
//  27th_SOPT_iOS_2ndWeek_Seminar_Assignmnet
//
//  Created by 노한솔 on 2020/11/04.
//

import UIKit

class NetworkCollectionViewCell: UICollectionViewCell {
  static let identifier = "NetworkCollectionViewCell"
  
  // MARK: - IBOutlets
  @IBOutlet weak var memberImageView: UIImageView!
  @IBOutlet weak var nameLabel: UILabel!
  @IBOutlet weak var hashLabel: UILabel!
  
  func setImage(imageName: String) {
    memberImageView.image = UIImage(named: imageName)
  }
}
