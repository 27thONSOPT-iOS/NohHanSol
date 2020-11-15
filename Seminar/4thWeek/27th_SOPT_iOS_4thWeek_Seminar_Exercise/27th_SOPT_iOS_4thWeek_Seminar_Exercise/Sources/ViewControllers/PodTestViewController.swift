//
//  PodTestViewController.swift
//  27th_SOPT_iOS_4thWeek_Seminar_Exercise
//
//  Created by 노한솔 on 2020/11/07.
//

import UIKit
import FSCalendar

class PodTestViewController: UIViewController {
  
  // MARK: - Variables
  fileprivate weak var calendar: FSCalendar!
  
  // MARK: - APP LifeCycles
  override func viewDidLoad() {
    super.viewDidLoad()
    let calendar = FSCalendar(frame: CGRect(x: 0, y: 0, width: 320, height: 300))
    calendar.translatesAutoresizingMaskIntoConstraints = false
    calendar.dataSource = self
    calendar.delegate = self
    view.addSubview(calendar)
    self.calendar = calendar
  }
}

extension PodTestViewController: FSCalendarDelegate {
  func calendar(_ calendar: FSCalendar, boundingRectWillChange bounds: CGRect, animated: Bool) {
    calendar.heightAnchor.constraint(equalToConstant: CGFloat(self.view.frame.height/2)).isActive = true
    calendar.center.equalTo(self.view.center)
  }
}

extension PodTestViewController: FSCalendarDataSource {
  
}
