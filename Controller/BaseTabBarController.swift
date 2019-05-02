//
//  BaseTabBarController.swift
//  CSTAppStore
//
//  Created by Perfect Aduh on 19/04/2019.
//  Copyright © 2019 Covenant Sqaure Tech. All rights reserved.
//

import UIKit

class BaseTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        viewControllers = [
            createNavController(viewController: UIViewController(), title: "Today", imageName: "today_icon"),
            createNavController(viewController: UIViewController(), title: "Apps", imageName: "apps"),
            createNavController(viewController: AppSearchController(), title: "Search", imageName: "search")
        ]

    }
    
    fileprivate func createNavController(viewController: UIViewController, title: String, imageName: String, imageInset: UIEdgeInsets? = nil) -> UIViewController {
        
        viewController.navigationItem.title = title
        viewController.view.backgroundColor = .white
        let navController = UINavigationController(rootViewController: viewController)
        navController.navigationBar.prefersLargeTitles = true
        navController.tabBarItem.title = title
        navController.tabBarItem.image = UIImage(named: imageName)
        
        return navController
    }
}
