//
//  ViewController.swift
//  UF2Pract2
//
//  Created by Professor on 26/11/2019.
//  Copyright © 2019 DAM2T. All rights reserved.
//

import UIKit
import GoogleSignIn

class ViewController: UIViewController { //}, DetailDelegate {

    @IBOutlet weak var textButtonLabel: UILabel!
    @IBOutlet weak var customTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
        
        //comprobamos las views que tenemos activas
        if let viewControllers = self.navigationController?.viewControllers {
              for vc in viewControllers {
                print(vc.description)
              }
        }
        
        //comprobamos el número de escenas activas
        print("número de escenas" + String(UIApplication.shared.connectedScenes.count))
    }
    
    @IBAction func logoutAction(_ sender: Any) {
        
        //logout
        GIDSignIn.sharedInstance().signOut()
        
        //reseteamos la navegación y el root
        let loginViewController = LoginViewController(nibName: String(describing: LoginViewController.self), bundle: nil)
        
        let navigationController = UINavigationController(rootViewController: loginViewController)
        
        let sceneDelegate = UIApplication.shared.connectedScenes.first
        if let scene : SceneDelegate = (sceneDelegate?.delegate as? SceneDelegate) {
            scene.window?.rootViewController = navigationController
        }
    }
}
