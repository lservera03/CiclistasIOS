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
        loadCountries()
        loadEvents()
        
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
    
    func loadCountries() {
        print("cargando paises")
        DBManager.sharedInstance.addData(object: Country(id: 1, name: "ESP"))
        DBManager.sharedInstance.addData(object: Country(id: 2, name: "GBR"))
        DBManager.sharedInstance.addData(object: Country(id: 3, name: "FRA"))
    }
    
    
    func loadEvents(){
        print("cargando eventos")
        DBManager.sharedInstance.addData(object: Event(id: 1, country: DBManager.sharedInstance.getCountryById(id: 1), name: "Vuelta España", popularity: 10, numberStage: 2, stageKm: 23))
        
        
    }


   
}
