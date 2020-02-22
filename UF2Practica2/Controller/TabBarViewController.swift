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
            
        
        self.tabBar.backgroundColor = UIColor.blue
        
        loadViews()
        
        navigationItem.hidesBackButton = true
        self.selectedViewController = self.viewControllers?[0]
    }
    
    /*
     Metodo que permite cargar en la tabbar las views necesarias 
     */
    func loadViews(){
        let event = EventsViewController()
        let itemEvent = UITabBarItem()
        //itemEvent.title = "Events"
        itemEvent.image = UIImage(named: "eventIcon")
        itemEvent.imageInsets = UIEdgeInsets(top: 15,left: 0,bottom: -15,right: 0)
        event.tabBarItem = itemEvent
        
        let ciclists = CiclistsViewController()
        let itemCiclists = UITabBarItem()
        //itemCiclists.title = "Ciclists"
        itemCiclists.image = UIImage(named: "ciclistaIcon")
        itemCiclists.imageInsets = UIEdgeInsets(top: 15,left: 0,bottom: -15,right: 0)
        ciclists.tabBarItem = itemCiclists
        
        let teams = TeamsViewController()
        let itemTeams = UITabBarItem()
        //itemTeams.title = "Teams"
        itemTeams.image = UIImage(named: "teamIcon")
        itemTeams.imageInsets = UIEdgeInsets(top: 15,left: 0,bottom: -15,right: 0)
        teams.tabBarItem = itemTeams
        
        
        self.viewControllers = [event, ciclists, teams]
    }
    
   


   
}
