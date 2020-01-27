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
        let viewController = ViewController(nibName:String(describing: TabBarViewController.self), bundle: nil)
        navigationController?.pushViewController(viewController, animated: true)
    }

}
