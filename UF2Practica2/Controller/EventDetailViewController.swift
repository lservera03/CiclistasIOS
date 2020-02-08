//
//  UserDetailViewController.swift
//  UF2Practica2
//
//  Created by dam on 04/02/2020.
//  Copyright © 2020 DAM2T. All rights reserved.
//

import UIKit

class EventDetailViewController: UIViewController {

    @IBOutlet weak var eventPicture: UIImageView!
    @IBOutlet weak var eventName: UILabel!
    @IBOutlet weak var eventPopularity: UILabel!
    @IBOutlet weak var eventCountry: UILabel!
    @IBOutlet weak var eventStages: UILabel!
    @IBOutlet weak var eventKm: UILabel!
    public var event: Event?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        loadData()
    }
    
    func loadData(){
        self.eventPicture.image = UIImage(named: "bici")
        self.eventName.text = event?.name
        self.eventPopularity.text = String(event!.popularity)
        self.eventCountry.text = event?.country
        self.eventStages.text = String(event!.numberStage)
        self.eventKm.text = String(event!.stageKm)
    }


    

}
