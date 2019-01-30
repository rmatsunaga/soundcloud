//
//  SoundCloudTabBarController.swift
//  Soundcloud
//
//  Created by Rey Matsunaga on 1/29/19.
//  Copyright © 2019 Rey Matsunaga. All rights reserved.
//

import UIKit

class SoundCloudTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        var tabBarList: [UIViewController] = []
        let layout = UICollectionViewFlowLayout()
        let firstViewController = HomeViewController(collectionViewLayout: layout)
        
        firstViewController.tabBarItem = UITabBarItem(tabBarSystemItem: .search, tag:0)
        tabBarList.append(firstViewController)
        
        let secondViewController = StreamViewController()
        secondViewController.tabBarItem = UITabBarItem(tabBarSystemItem: .search, tag: 1)
        tabBarList.append(secondViewController)
        
        let thirdViewController = SearchViewController()
        thirdViewController.tabBarItem = UITabBarItem(tabBarSystemItem: .search, tag:2)
        tabBarList.append(thirdViewController)
        
        let fourthViewController = LibraryViewController()
        fourthViewController.tabBarItem = UITabBarItem(tabBarSystemItem: .search, tag:3)
        tabBarList.append(fourthViewController)
        
        viewControllers = tabBarList
        
        UITabBar.appearance().barTintColor = .black
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
