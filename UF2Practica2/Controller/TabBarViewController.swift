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
            
        
        tabBar.backgroundColor = UIColor.red
        
        loadViews()
        self.selectedViewController = self.viewControllers?[0]
    }
    
    func loadViews(){
        let event = EventosViewController()
        event.tabBarItem = UITabBarItem(title: NSLocalizedString("Events", comment:""),image: UIImage(named: "Universal 1x"), tag:0)
        _ = UINavigationController(rootViewController: event)
        
        let ciclists = CiclistasTableViewController()
        event.tabBarItem = UITabBarItem(title: NSLocalizedString("Ciclists", comment:""),image: UIImage(named: "Universal 1x"), tag:1)
        _ = UINavigationController(rootViewController: ciclists)
        self.viewControllers = [event, ciclists]
    }


   
}
