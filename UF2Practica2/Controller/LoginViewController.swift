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
        DBManager.sharedInstance.addData(object: Event(country: "Italia", name: "Giro d'Italia", popularity: 15, numberStage: 5, stageKm: 40))
        DBManager.sharedInstance.addData(object: Event(country: "Bélgica", name: "Tour de Flandes", popularity: 5, numberStage: 7, stageKm: 50))
    }
        
    func loadCyclists(){
        DBManager.sharedInstance.addData(object: Cyclist(team: "Movistar", country: "España", specialty: "Pedalear", lastName: "Contador", firstName: "Alberto", birthDate: "22/12/1990", popularity: 90, leader: true, size: 190, weight: 70, mountain: 20, plain: 50, downhilling: 10, sprint: 10, resistance: 70, recuperation: 25, timeTrial: 34))
            
        DBManager.sharedInstance.addData(object: Cyclist(team: "BH", country: "Francia", specialty: "DownHiling", lastName: "Martinez", firstName: "Fernando", birthDate: "22/12/1993", popularity: 60, leader: false, size: 170, weight: 67, mountain: 30, plain: 50, downhilling: 10, sprint: 3, resistance: 70, recuperation: 25, timeTrial: 34))
        DBManager.sharedInstance.addData(object: Cyclist(team: "Sky", country: "Italia", specialty: "Sprint", lastName: "Quintana", firstName: "Nairo", birthDate: "22/12/1995", popularity: 85, leader: false, size: 190, weight: 75, mountain: 30, plain: 55, downhilling: 5, sprint: 40, resistance: 80, recuperation: 20, timeTrial: 33))
        DBManager.sharedInstance.addData(object: Cyclist(team: "Orbea", country: "España", specialty: "Mountain", lastName: "Rodríguez", firstName: "Joaquim", birthDate: "22/12/1985", popularity: 75, leader: false, size: 180, weight: 76, mountain: 40, plain: 50, downhilling: 10, sprint: 30, resistance: 90, recuperation: 25, timeTrial: 37))
    }
        
    func loadTeams(){
        DBManager.sharedInstance.addData(object: Team(country: "España", name: "Movistar", manager: "Alberto Rodriguez"))
        DBManager.sharedInstance.addData(object: Team(country: "Francia", name: "Sky", manager: "Miguel Casanova"))
        DBManager.sharedInstance.addData(object: Team(country: "Francia", name: "Orbea", manager: "Juan Fernandez"))
    }

}
