//
//  PickerViewController.swift
//  27th_SOPT_iOS_3rdWeek_Seminar_Exercise
//
//  Created by 노한솔 on 2020/10/31.
//

import UIKit

class PickerViewController: UIViewController {
  
  // MARK: - IBOutlets
  @IBOutlet weak var partImageView: UIImageView!
  @IBOutlet weak var partNameLabel: UILabel!
  @IBOutlet weak var partPickerView: UIPickerView!
  
  // MARK: - Vars
  var parts: [Part] = []
  
  // MARK: - Funcs
  func setPartData() {
    parts.append(contentsOf: [
      Part(imageName: "plan", partName: "Plan"),
      Part(imageName: "design", partName: "Design"),
      Part(imageName: "server", partName: "Server"),
      Part(imageName: "ios", partName: "iOS"),
      Part(imageName: "android", partName: "Android"),
      Part(imageName: "web", partName: "Web")
    ])
  }
  
  func initLayout() {
    let initPart = parts[0]
    partImageView.image = initPart.makeImage()
    partNameLabel.text = initPart.partName
  }
  
  // MARK: - ViewLifeCycles
  override func viewDidLoad() {
    super.viewDidLoad()
    setPartData()
    initLayout()
    self.partPickerView.delegate = self
    self.partPickerView.dataSource = self
  }
}

  // MARK: - Extensions
extension PickerViewController : UIPickerViewDelegate {
  func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
    return parts[row].partName
  }
  func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
    let selectPart = parts[row]
    self.partImageView.image = selectPart.makeImage()
    self.partNameLabel.text = selectPart.partName
  }
}

extension PickerViewController : UIPickerViewDataSource {
  func numberOfComponents(in pickerView: UIPickerView) -> Int {
    return 1
  }
  func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
    return parts.count
  }
}
