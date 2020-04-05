//
//  ViewController.swift
//  shopster
//
//  Created by John Lui on 2020-04-05.
//  Copyright © 2020 John Lui. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .systemBlue
        setupTabBarElements()
    }

    private func setupTabBarElements() {
        
        let homeFeedController = UINavigationController(rootViewController: HomeFeedViewController())
        homeFeedController.tabBarItem.image = UIImage(named: "FrontPage_Normal")
        homeFeedController.tabBarItem.selectedImage = UIImage(named: "FrontPage_Normal")
        
        let exploreController = UINavigationController(rootViewController: ExploreViewController())
        exploreController.tabBarItem.image = UIImage(named: "Public_Experiments_Normal")
        exploreController.tabBarItem.selectedImage = UIImage(named: "Public_Experiments_Normal")
        
        let messagesController = UINavigationController(rootViewController: MessagesViewController())
        messagesController.tabBarItem.image = UIImage(named: "FAQ_Normal")
        messagesController.tabBarItem.selectedImage = UIImage(named: "FAQ_Normal")
        
        let profileController = UINavigationController(rootViewController: ProfileViewController())
        profileController.tabBarItem.image = UIImage(named: "Profile_Normal")
        profileController.tabBarItem.selectedImage = UIImage(named: "Profile_Normal")
        
        viewControllers = [homeFeedController, exploreController, messagesController, profileController]
    }

}

