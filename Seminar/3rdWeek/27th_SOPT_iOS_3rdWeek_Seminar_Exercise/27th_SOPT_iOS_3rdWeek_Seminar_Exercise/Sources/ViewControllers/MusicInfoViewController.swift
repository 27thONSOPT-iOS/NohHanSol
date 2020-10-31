//
//  MusicInfoViewController.swift
//  27th_SOPT_iOS_3rdWeek_Seminar_Exercise
//
//  Created by 노한솔 on 2020/10/31.
//

import UIKit

class MusicInfoViewController: UIViewController {
  // MARK: - IBOutlets
  @IBOutlet weak var titleLabel: UILabel!
  @IBOutlet weak var singerLabel: UILabel!
  @IBOutlet weak var albumImageView: UIImageView!
  
  // MARK: - Vars
  var music: Music?
  
  // MARK: - Funcs
  func setMusicInfo() {
    if let music = music {
      titleLabel.text = music.title
      singerLabel.text = music.singer
      albumImageView.image = music.makeAlbumImage()
    }
  }
  // MARK: - AppLifeCycles
  override func viewDidLoad() {
    super.viewDidLoad()
    setMusicInfo()
  }
}
