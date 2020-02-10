//
//  LoginViewController.swift
//  UF2Practica2
//
//  Created by Professor on 18/12/2019.
//  Copyright © 2019 DAM2T. All rights reserved.
//

import UIKit
import GoogleSignIn
import CoreGraphics

class LoginViewController: UIViewController {
    

    @IBOutlet weak var loginButton: GIDSignInButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    GIDSignIn.sharedInstance().presentingViewController = self
        
    
    loadEvents()
    loadTeams()
    loadCyclists()
    //comprobamos las views que tenemos activas
    if let viewControllers = self.navigationController?.viewControllers {
          for vc in viewControllers {
            print(vc.description)
          }
    }


    NotificationCenter.default.addObserver(self,
                                           selector: #selector(LoginViewController.receiveToggleAuthUINotification(_:)),
                                               name: NSNotification.Name(rawValue: "ToggleAuthUINotification"),
                                             object: nil)
    }
    
    
    @objc func receiveToggleAuthUINotification(_ notification: NSNotification) {
        print(notification.userInfo!)
        let viewController = TabBarViewController(nibName:String(describing: TabBarViewController.self), bundle: nil)
        navigationController?.pushViewController(viewController, animated: true)
    }
    
    func loadEvents(){
        DBManager.sharedInstance.addData(object: Event(country: "Espana", name: "Vuelta España", popularity: 10, numberStage: 2, stageKm: 23))
        DBManager.sharedInstance.addData(object: Event(country: "Francia", name: "Tour de France", popularity: 30, numberStage: 2, stageKm: 23))
    }
        
    func loadCyclists(){
        DBManager.sharedInstance.addData(object: Cyclist(team: "Movistar", country: "España", specialty: "Pedalear", lastName: "Contador", firstName: "Alberto", birthDate: "22/12/1990", popularity: 90, leader: true, size: 190, weight: 70, mountain: 20, plain: 50, downhilling: 10, sprint: 10, resistance: 70, recuperation: 25, timeTrial: 34))
            
        DBManager.sharedInstance.addData(object: Cyclist(team: "Amarillo", country: "Francia", specialty: "Molestar", lastName: "Croissant", firstName: "Françoise", birthDate: "22/12/1995", popularity: 80, leader: false, size: 190, weight: 70, mountain: 20, plain: 50, downhilling: 10, sprint: 10, resistance: 70, recuperation: 25, timeTrial: 34))
    }
        
    func loadTeams(){
        DBManager.sharedInstance.addData(object: Team(country: "España", name: "Movistar", manager: "Marc Marzà"))
        DBManager.sharedInstance.addData(object: Team(country: "Francia", name: "Eiffel", manager: "Romain Grosjean"))
    }

}
