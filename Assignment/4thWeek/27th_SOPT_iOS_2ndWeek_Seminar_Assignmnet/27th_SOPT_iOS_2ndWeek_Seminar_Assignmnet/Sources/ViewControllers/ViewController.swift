//
//  ViewController.swift
//  27th_SOPT_iOS_2ndWeek_Seminar_Assignmnet
//
//  Created by 노한솔 on 2020/10/27.
//

import UIKit

class ViewController: UIViewController {
  
  // MARK: - IBOutlets
  @IBOutlet weak var networkScrollView: UIScrollView!
  @IBOutlet weak var topButton: UIButton!
  @IBOutlet weak var networkCollectionView: UICollectionView!
  @IBOutlet weak var topView: UIView!
  
  
  // MARK: - IBActions
  @IBAction func touchUpToTop(_ sender: Any) {
    self.networkScrollView.setContentOffset(CGPoint.zero, animated: false)
  }
  
  // MARK: - Variables
  var blocks: [Block] = []
  
  // MARK: - Functions
  func setBlock() {
    blocks.append(contentsOf: [
                    Block(imageName: "juhyeok", memberName: "이주혁", hash: "#hereis#아요#내꿈은#사과농장#ENFP"),
                    Block(imageName: "peace", memberName: "손평화", hash: "#핸드피쓰 #이너피쓰 #배꼽도둑 #헬린이 #sson_peace7"),
                    Block(imageName: "juhyeok", memberName: "이주혁", hash: "#hereis#아요#내꿈은#사과농장#ENFP"),
                    Block(imageName: "juhyeok", memberName: "이주혁", hash: "#hereis#아요#내꿈은#사과농장#ENFP"),
                    Block(imageName: "juhyeok", memberName: "이주혁", hash: "#hereis#아요#내꿈은#사과농장#ENFP"),
                    Block(imageName: "juhyeok", memberName: "이주혁", hash: "#hereis#아요#내꿈은#사과농장#ENFP"),
                    Block(imageName: "juhyeok", memberName: "이주혁", hash: "#hereis#아요#내꿈은#사과농장#ENFP"),
                    Block(imageName: "juhyeok", memberName: "이주혁", hash: "#hereis#아요#내꿈은#사과농장#ENFP"),
                    Block(imageName: "juhyeok", memberName: "이주혁", hash: "#hereis#아요#내꿈은#사과농장#ENFP"),
                    Block(imageName: "juhyeok", memberName: "이주혁", hash: "#hereis#아요#내꿈은#사과농장#ENFP"),
                    Block(imageName: "juhyeok", memberName: "이주혁", hash: "#hereis#아요#내꿈은#사과농장#ENFP"),
                    Block(imageName: "juhyeok", memberName: "이주혁", hash: "#hereis#아요#내꿈은#사과농장#ENFP")])
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    self.topButton.layer.cornerRadius = self.topButton.frame.height*1/2
    setBlock()
    self.topButton.isHidden = true
    self.networkScrollView.delegate = self
    self.networkScrollView.translatesAutoresizingMaskIntoConstraints = false
    self.networkScrollView.heightAnchor.constraint(equalToConstant: CGFloat(420+230*self.blocks.count)).isActive = true
    
    // Do any additional setup after loading the view.
  }
  
  override func viewWillLayoutSubviews() {
    super.viewWillLayoutSubviews()
  }
  
  override func viewDidLayoutSubviews() {
    super.viewDidLayoutSubviews()
    self.networkCollectionView.translatesAutoresizingMaskIntoConstraints = false
    self.networkCollectionView.heightAnchor.constraint(equalToConstant: CGFloat(230*round(Double(self.blocks.count/2)))).isActive = true
    self.networkCollectionView.delegate = self
    self.networkCollectionView.dataSource = self
  }
  
}

extension ViewController: UIScrollViewDelegate {
  func scrollViewDidScroll(_ scrollView: UIScrollView) {
    if networkScrollView.contentOffset.y > 420 {
      self.topButton.isHidden = false
    }
    else {
      self.topButton.isHidden = true
    }
  }
}

extension ViewController: UICollectionViewDelegateFlowLayout {
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout:
                        UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
    
    return CGSize(width: collectionView.frame.width/2,
                  height: 230)
    
  }
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout:
                        UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
    
    return 0
  }
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout:
                        UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
    
    return 0
  }
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout:
                        UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
    
    return UIEdgeInsets(top: 20, left: 0, bottom: 0, right: 0)
  }
  
  func scrollViewWillBeginDragging(_ scrollView: UIScrollView) {
    self.view.frame.origin.y = -self.topView.frame.height
    self.view.frame.size.height += self.topView.frame.height
    self.topView.isHidden = true
  }
  

  func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
    self.view.frame.origin.y = 0
    self.topView.isHidden = false
  }
}

extension ViewController: UICollectionViewDataSource {
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return blocks.count
  }
  
  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: NetworkCollectionViewCell.identifier, for: indexPath) as? NetworkCollectionViewCell else {
      return UICollectionViewCell()
    }
    print(blocks.count)
    cell.hashLabel.text = blocks[indexPath.row].hash
    cell.setImage(imageName: blocks[indexPath.row].imageName)
    cell.nameLabel.text = blocks[indexPath.row].memberName
    return cell
  }
}
