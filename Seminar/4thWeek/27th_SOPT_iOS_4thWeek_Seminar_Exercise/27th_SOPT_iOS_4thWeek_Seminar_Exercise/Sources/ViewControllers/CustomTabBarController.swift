//
//  CustomTabBarController.swift
//  27th_SOPT_iOS_4thWeek_Seminar_Exercise
//
//  Created by 노한솔 on 2020/11/07.
//

import UIKit

class CustomTabBarController: UITabBarController {

  // MARK: - Functions
  func setTabBar() {
    guard let greenViewController = self.storyboard?.instantiateViewController(identifier: "GreenViewController") as? GreenViewController,
          let blueViewController = self.storyboard?.instantiateViewController(identifier: "BlueViewController") as? BlueViewController
          else {
      return
    }
    greenViewController.tabBarItem.title = "Home"
    greenViewController.tabBarItem.image = UIImage(systemName: "house")
    greenViewController.tabBarItem.selectedImage = UIImage(systemName: "house.fill")
    blueViewController.tabBarItem.title = "Profile"
    blueViewController.tabBarItem.image = UIImage(systemName: "person")
    blueViewController.tabBarItem.selectedImage = UIImage(systemName: "person.fill")
    
    setViewControllers([greenViewController, blueViewController], animated: true)
  }
  
  // MARK: - APP LifeCycles
  override func viewDidLoad() {
    super.viewDidLoad()
    setTabBar()
  }
    
}
