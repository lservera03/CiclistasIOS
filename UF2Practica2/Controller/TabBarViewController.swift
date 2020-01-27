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
        
        
        loadViews()
        self.selectedViewController = self.viewControllers?[0]
        print("eventos")
    }
    
    func loadViews(){
        let event = EventosViewController()
        
        self.viewControllers = [event]
    }


   
}
