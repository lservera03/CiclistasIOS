//
//  UserDetailViewController.swift
//  UF2Practica2
//
//  Created by dam on 04/02/2020.
//  Copyright © 2020 DAM2T. All rights reserved.
//

import UIKit

class UserDetailViewController: UIViewController {

    @IBOutlet weak var eventPicture: UIImageView!
    @IBOutlet weak var eventName: UILabel!
    @IBOutlet weak var eventPopularity: UILabel!
    @IBOutlet weak var eventCountry: UILabel!
    @IBOutlet weak var eventStages: UILabel!
    @IBOutlet weak var eventKm: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
