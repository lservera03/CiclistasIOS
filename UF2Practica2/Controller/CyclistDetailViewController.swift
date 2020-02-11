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
    @IBOutlet weak var editButton: UIButton!
    @IBOutlet weak var saveButton: UIButton!
    
    public var cyclist: Cyclist?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        saveButton.isEnabled=false
        saveButton.alpha = 0
        editButton.setImage(UIImage(named: "editIcon"), for: .normal)
        loadData()
    }
    
    func loadData(){
        
        self.cyclistImage.image = UIImage(named: "cyclist")
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

    @IBAction func editCyclist(_ sender: UIButton) {
        editButton.isEnabled=false
        editButton.alpha=0
        saveButton.alpha=1
        saveButton.isEnabled=true
        self.cyclistAge.isEnabled=true
        self.cyclistCountry.isEnabled=true
        self.cyclistTeam.isEnabled=true
        self.cyclistHeight.isEnabled=true
        self.cyclistWeight.isEnabled=true
        self.cyclistSpeciality.isEnabled=true
        self.cyclistMountain.isEnabled=true
        self.cyclistPlain.isEnabled=true
        self.cyclistDownhilling.isEnabled=true
        self.cyclistSprint.isEnabled=true
        self.cyclistResistence.isEnabled=true
        self.cyclistRecuperation.isEnabled=true
        self.cyclistTimeTrial.isEnabled=true
    }
    
    @IBAction func saveCyclist(_ sender: UIButton) {
        cyclist?.birthDate = cyclistAge.text!
        cyclist?.country = cyclistCountry.text!
        cyclist?.team = cyclistTeam.text!
        cyclist?.size = Double(cyclistHeight.text!)!
        cyclist?.weight = Double(cyclistWeight.text!)!
    }
    
    
    

    

}
