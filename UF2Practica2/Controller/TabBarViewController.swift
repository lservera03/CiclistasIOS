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
        //loadEvents()
        //loadCyclists()
        
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
    
    
    func loadEvents(){
        DBManager.sharedInstance.addData(object: Event(country: "Espana", name: "Vuelta España", popularity: 10, numberStage: 2, stageKm: 23))
        DBManager.sharedInstance.addData(object: Event(country: "Francia", name: "Tour de France", popularity: 30, numberStage: 2, stageKm: 23))
    }
    
    func loadCyclists(){
        DBManager.sharedInstance.addData(object: Cyclist(team: "Movistar", country: "España", specialty: "Pedalear", lastName: "Contador", firstName: "Alberto", birthDate: "22/12/1990", popularity: 90, leader: true, size: 190, weight: 70, mountain: 20, plain: 50, downhilling: 10, sprint: 10, resistance: 70, recuperation: 25, timeTrial: 34))
        
        DBManager.sharedInstance.addData(object: Cyclist(team: "Amarillo", country: "Francia", specialty: "Molestar", lastName: "Croissant", firstName: "Françoise", birthDate: "22/12/1995", popularity: 80, leader: false, size: 190, weight: 70, mountain: 20, plain: 50, downhilling: 10, sprint: 10, resistance: 70, recuperation: 25, timeTrial: 34))
        
    }


   
}
