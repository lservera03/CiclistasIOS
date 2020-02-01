//
//  TabBarViewController.swift
//  UF2Practica2
//
//  Created by dam on 27/01/2020.
//  Copyright © 2020 DAM2T. All rights reserved.
//

import UIKit

class TabBarViewController: UITabBarController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
            
        
        self.tabBar.backgroundColor = UIColor.red
        
        loadViews()
        self.selectedViewController = self.viewControllers?[0]
    }
    
    func loadViews(){
        let event = EventsViewController()
        let itemEvent = UITabBarItem()
        itemEvent.title = "Events"
        itemEvent.image = UIImage(named: "home_icon")
        event.tabBarItem = itemEvent
        
        let ciclists = CiclistsViewController()
        let itemCiclists = UITabBarItem()
        itemCiclists.title = "Ciclists"
        itemCiclists.image = UIImage(named: "home_icon")
        ciclists.tabBarItem = itemCiclists
        
        
        
        self.viewControllers = [event, ciclists]
    }


   
}