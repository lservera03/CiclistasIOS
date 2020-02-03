//
//  Cyclist.swift
//  UF2Practica2
//
//  Created by dam on 03/02/2020.
//  Copyright © 2020 DAM2T. All rights reserved.
//

import Foundation
import RealmSwift
import UIKit


class Cyclist: Object{
    
    @objc dynamic var id: Int = 0
    @objc dynamic var team: Team? = Team()
    @objc dynamic var country: Country? = Country()
    @objc dynamic var specialty: Specialty? = Specialty()
    @objc dynamic var lastName: String = ""
    @objc dynamic var firstName: String = ""
    @objc dynamic var birthDate: Date = Date()
    @objc dynamic var popularity: Int = 0
    @objc dynamic var leader: Bool = false
    @objc dynamic var size: Double = 0.0
    @objc dynamic var weight: Double = 0.0
    @objc dynamic var mountain: Int = 0
    @objc dynamic var plain: Int = 0
    @objc dynamic var downhilling: Int = 0
    @objc dynamic var sprint: Int = 0
    @objc dynamic var resistance: Int = 0
    @objc dynamic var recuperation: Int = 0
    @objc dynamic var timeTrial: Int = 0
    
    
    convenience init(id: Int, team: Team, country: Country, specialty: Specialty, lastName: String,
                     firstName: String, birthDate: Date, popularity:Int, leader:Bool, size: Double, weight: Double, mountain: Int, plain: Int, downhilling: Int, sprint: Int, resistance: Int, recuperation: Int, timeTrial: Int){
        
        self.init()
        
        self.id = id
        self.team = team
        self.country = country
        self.specialty = specialty
        self.lastName = lastName
        self.firstName = firstName
        self.birthDate = birthDate
        self.popularity = popularity
        self.leader = leader
        self.size = size
        self.weight = weight
        self.mountain = mountain
        self.plain = plain
        self.downhilling = downhilling
        self.sprint = sprint
        self.resistance = resistance
        self.recuperation = recuperation
        self.timeTrial = timeTrial
    }
    
    
    
}
