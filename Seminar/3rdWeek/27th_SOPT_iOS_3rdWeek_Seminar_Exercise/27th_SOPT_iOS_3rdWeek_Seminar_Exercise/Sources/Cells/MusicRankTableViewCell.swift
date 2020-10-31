//
//  MusicRankTableViewCell.swift
//  27th_SOPT_iOS_3rdWeek_Seminar_Exercise
//
//  Created by 노한솔 on 2020/10/31.
//

import UIKit

class MusicRankTableViewCell: UITableViewCell {
  static let identifier = "MusicRankTableViewCell"
  
  // MARK: - IBOutlets
  @IBOutlet weak var albumImageView: UIImageView!
  @IBOutlet weak var rankLabel: UILabel!
  @IBOutlet weak var titleLabel: UILabel!
  @IBOutlet weak var singerLabel: UILabel!
  
  // MARK: - Funcs
  func setCell(rank: Int, music: Music) {
    albumImageView.image = music.makeAlbumImage()
    rankLabel.text = "\(rank+1)"
    titleLabel.text = music.title
    singerLabel.text = music.singer
  }
  
  // MARK: - AppLifeCycles
  override func awakeFromNib() {
    super.awakeFromNib()
    
  }
  
  // MARK: - OverridedFuncs
  override func setSelected(_ selected: Bool, animated: Bool) {
    super.setSelected(selected, animated: animated)
  }
  
  
}
