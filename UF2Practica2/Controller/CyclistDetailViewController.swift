//
//  CyclistDetailViewController.swift
//  UF2Practica2
//
//  Created by Luis Servera  on 08/02/2020.
//  Copyright © 2020 DAM2T. All rights reserved.
//

import UIKit

class CyclistDetailViewController: UIViewController {

    @IBOutlet weak var cyclistImage: UIImageView!
    @IBOutlet weak var cyclistLeader: UILabel!
    @IBOutlet weak var cyclistName: UILabel!
    @IBOutlet weak var cyclistAge: UILabel!
    @IBOutlet weak var cyclistCountry: UILabel!
    @IBOutlet weak var cyclistTeam: UILabel!
    @IBOutlet weak var cyclistHeight: UILabel!
    @IBOutlet weak var cyclistWeight: UILabel!
    @IBOutlet weak var cyclistSpeciality: UILabel!
    @IBOutlet weak var cyclistMountain: UILabel!
    @IBOutlet weak var cyclistPlain: UILabel!
    @IBOutlet weak var cyclistDownhilling: UILabel!
    @IBOutlet weak var cyclistSprint: UILabel!
    @IBOutlet weak var cyclistResistence: UILabel!
    @IBOutlet weak var cyclistRecuperation: UILabel!
    @IBOutlet weak var cyclistTimeTrial: UILabel!
    
    public var cyclist: Cyclist?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        loadData()
    }
    
    func loadData(){
        self.cyclistImage.image = UIImage(named: "bici")
        self.cyclistName.text = cyclist!.firstName + " " + cyclist!.lastName
        if(cyclist!.leader){
            self.cyclistLeader.alpha = 1
        }else{
            self.cyclistLeader.alpha = 0
        }
        self.cyclistAge.text = cyclist!.birthDate
        self.cyclistCountry.text = cyclist!.country
        self.cyclistTeam.text = cyclist!.team
        self.cyclistHeight.text = String(cyclist!.size)
        self.cyclistWeight.text = String(cyclist!.weight)
        self.cyclistSpeciality.text = cyclist!.specialty
        self.cyclistMountain.text = String(cyclist!.mountain)
        self.cyclistPlain.text = String(cyclist!.sprint)
        self.cyclistDownhilling.text = String(cyclist!.downhilling)
        self.cyclistSprint.text = String(cyclist!.sprint)
        self.cyclistResistence.text = String(cyclist!.resistance)
        self.cyclistRecuperation.text = String(cyclist!.recuperation)
        self.cyclistTimeTrial.text = String(cyclist!.timeTrial)
    }


    

}
