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
    public var cyclist: Cyclist?
    
    override func viewDidLoad() {
        super.viewDidLoad()

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
    }


    

}
