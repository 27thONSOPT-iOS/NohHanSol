//
//  TableViewController.swift
//  27th_SOPT_iOS_3rdWeek_Seminar_Exercise
//
//  Created by 노한솔 on 2020/10/31.
//

import UIKit

class TableViewController: UIViewController {
  
  // MARK: - IBOutlets
  @IBOutlet weak var musicRankTableView: UITableView!
  
  // MARK: - Vars
  var musicRank: [Music] = []
  
  // MARK: - Funcs
  func setMusicData() {
    musicRank.append(contentsOf: [
      Music(title: "Lovesick Girls", singer: "BLACK PINK", albumImageName: "blackpink"),
      Music(title: "Dynamite", singer: "방탄소년단", albumImageName: "bts"),
      Music(title: "positions", singer: "Ariana Grande", albumImageName: "ariana"),
      Music(title: "놓아줘 (with 태연)", singer: "크러쉬", albumImageName: "crush"),
      Music(title: "I CAN'T STOP ME", singer: "TWICE", albumImageName: "twice"),
      Music(title: "Make A Wish (Birthday Song)", singer: "NCT U", albumImageName: "nctu"),
      Music(title: "ALIEN", singer: "이수현", albumImageName: "leesuhyeon"),
      Music(title: "DON'T TOUCH ME", singer: "환불원정대", albumImageName: "hwanbool"),
      Music(title: "Pretty Savage", singer: "BLACKPINK", albumImageName: "blackpink"),
      Music(title: "Bet You Wanna (feat. Cardi B)", singer: "BLACKPINK", albumImageName: "blackpink")
    ])
  }
  
  // MARK: - AppLifeCycles
  override func viewDidLoad() {
    super.viewDidLoad()
    setMusicData()
    musicRankTableView.delegate = self
    musicRankTableView.dataSource = self
  }
  
}

// MARK: - Extensions
extension TableViewController: UITableViewDelegate {
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    let selectMusic = musicRank[indexPath.row]
    let storyboard = UIStoryboard(name: "MusicInfo", bundle: nil)
    if let dvc = storyboard.instantiateViewController(identifier: "MusicInfoViewController") as? MusicInfoViewController {
      dvc.music = selectMusic
      self.navigationController?.pushViewController(dvc, animated: true)
    }
  }
}
extension TableViewController: UITableViewDataSource {
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return musicRank.count
  }
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    guard let cell = tableView.dequeueReusableCell(withIdentifier: MusicRankTableViewCell.identifier) as? MusicRankTableViewCell else {
      return UITableViewCell()
    }
    cell.setCell(rank: indexPath.row, music: musicRank[indexPath.row])
    return cell
  }
}
