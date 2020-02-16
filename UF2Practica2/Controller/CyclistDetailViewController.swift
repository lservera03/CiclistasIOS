//
//  CyclistDetailViewController.swift
//  UF2Practica2
//
//  Created by Luis Servera  on 08/02/2020.
//  Copyright © 2020 DAM2T. All rights reserved.
//

import UIKit

class CyclistDetailViewController: UIViewController {
    
    
    
    @IBOutlet weak var cyclistLeader: UIButton!
    
    @IBOutlet weak var cyclistImage: UIImageView!

    @IBOutlet weak var cyclistFirstName: UITextField!
    @IBOutlet weak var cyclistLastName: UITextField!
    @IBOutlet weak var cyclistAge: UITextField!
    @IBOutlet weak var cyclistCountry: UITextField!
    @IBOutlet weak var cyclistTeam: UITextField!
    @IBOutlet weak var cyclistSize: UITextField!
    @IBOutlet weak var cyclistWeight: UITextField!
    @IBOutlet weak var cyclistSpeciality: UITextField!
    @IBOutlet weak var cyclistMountain: UITextField!
    @IBOutlet weak var cyclistPlain: UITextField!
    @IBOutlet weak var cyclistDownhilling: UITextField!
    @IBOutlet weak var cyclistSprint: UITextField!
    @IBOutlet weak var cyclistResistance: UITextField!
    @IBOutlet weak var cyclistRecuperation: UITextField!
    @IBOutlet weak var cyclistTime: UITextField!
    
    @IBOutlet weak var editButton: UIButton!
    @IBOutlet weak var saveButton: UIButton!
    
    public var cyclist: Cyclist?=nil
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if(cyclist == nil){
            self.cyclistImage.image = UIImage(named: "cyclist")
            saveButton.isEnabled=true
            saveButton.alpha = 1
            saveButton.setImage(UIImage(named: "saveIcon"), for: .normal)
        }else{
        cyclistLeader.isEnabled=false
        cyclistLeader.layer.cornerRadius = 25.0
        cyclistLeader.layer.masksToBounds = true
        textFieldsUnabled()
        saveButton.isEnabled=false
        saveButton.alpha = 0
        editButton.setImage(UIImage(named: "editIcon"), for: .normal)
        saveButton.setImage(UIImage(named: "saveIcon"), for: .normal)
        loadData()
        }
    }
    
    func loadData(){
        self.cyclistImage.image = UIImage(named: "cyclist")
        self.cyclistFirstName.text = cyclist!.firstName
        self.cyclistLastName.text = cyclist!.lastName
        self.cyclistAge.text = cyclist?.birthDate
        self.cyclistCountry.text = cyclist?.country
        self.cyclistTeam.text = cyclist?.team
        self.cyclistSize.text = String(cyclist!.size)
        self.cyclistWeight.text = String(cyclist!.weight)
        self.cyclistSpeciality.text = cyclist?.specialty
        self.cyclistMountain.text = String(cyclist!.mountain)
        self.cyclistPlain.text = String(cyclist!.plain)
        self.cyclistDownhilling.text = String(cyclist!.downhilling)
        self.cyclistSprint.text = String(cyclist!.sprint)
        self.cyclistResistance.text = String(cyclist!.resistance)
        self.cyclistRecuperation.text = String(cyclist!.recuperation)
        self.cyclistTime.text = String(cyclist!.timeTrial)
        if(cyclist!.leader){
            self.cyclistLeader.backgroundColor = UIColor.green
        }else{
            self.cyclistLeader.backgroundColor = UIColor(white: 1, alpha: 0.5)
        }
    }
    
    @IBAction func editCyclist(_ sender: UIButton) {
        textFieldsEnabled()
        cyclistLeader.isEnabled=true
        editButton.isEnabled=false
        editButton.alpha=0
        saveButton.alpha=1
        saveButton.isEnabled=true
        
    }
    
    @IBAction func saveCyclist(_ sender: UIButton) {
        if(!checkTextField()){
            
        }else{
            
        
        if(cyclist==nil){
            cyclist = Cyclist()
            dataCyclist()
            saveCyclistDb()
            navigationController?.popViewController(animated: true)
            dismiss(animated: true, completion: nil)
        }else{
        DBManager.sharedInstance.beginWriteTransaction()
        dataCyclist()
        DBManager.sharedInstance.commitWriteTransaction()
        saveCyclistDb()
        editButton.isEnabled=true
        editButton.alpha=1
        saveButton.alpha=0
        saveButton.isEnabled=false
        textFieldsUnabled()
        }
        }
    }
    
    func textFieldsUnabled(){
        for case let text as UITextField in self.view.subviews{
            text.isEnabled = false
        }
    }
    
    func textFieldsEnabled(){
        for case let text as UITextField in self.view.subviews{
            text.isEnabled = true
        }
    }
    
    func checkTextField()->Bool{
        for case let text as UITextField in self.view.subviews{
            if(text.text == ""){
                return false
            }
        }
        return true
    }
    
    func saveCyclistDb(){
        DBManager.sharedInstance.addData(object: cyclist!)
    }
    
    func dataCyclist(){
        if(cyclistLeader.backgroundColor==UIColor.green){
            cyclist?.leader = true
        }else{
            cyclist?.leader=false
        }
        cyclist?.firstName = cyclistFirstName.text!
        cyclist?.lastName = cyclistLastName.text!
        cyclist?.birthDate = cyclistAge.text!
        cyclist?.country = cyclistCountry.text!
        cyclist?.team = cyclistTeam.text!
        cyclist?.size = Double(cyclistSize.text!)!
        cyclist?.weight = Double(cyclistWeight.text!)!
        cyclist?.specialty = cyclistSpeciality.text!
        cyclist?.mountain = Int(cyclistMountain.text!)!
        cyclist?.plain = Int(cyclistPlain.text!)!
        cyclist?.downhilling = Int(cyclistDownhilling.text!)!
        cyclist?.sprint = Int(cyclistSprint.text!)!
        cyclist?.resistance = Int(cyclistResistance.text!)!
        cyclist?.recuperation = Int(cyclistRecuperation.text!)!
        cyclist?.timeTrial = Int(cyclistTime.text!)!
        
    }
    
    @IBAction func selectLeader(_ sender: UIButton) {
        if(sender.backgroundColor==UIColor.green){
            sender.backgroundColor = UIColor(white: 1, alpha: 0.5)
        }else{
            sender.backgroundColor = UIColor.green
        }
    }
    
    
    
    
}
