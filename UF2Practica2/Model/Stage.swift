//
//  Stage.swift
//  UF2Practica2
//
//  Created by dam on 03/02/2020.
//  Copyright © 2020 DAM2T. All rights reserved.
//

import Foundation
import UIKit
import RealmSwift


class Stage: Object{
    
    @objc dynamic var id: Int = 0
    @objc dynamic var event: Event? = Event()
    @objc dynamic var specialty: Specialty? = Specialty()
    @objc dynamic var name: String = ""
    @objc dynamic var day: Int = 0
    @objc dynamic var month: Int = 0
    @objc dynamic var stageNumber: Int = 0
    
    
    convenience init(id: Int, event: Event, specialty: Specialty, name: String, day: Int, month: Int, stageNumber: Int) {
        self.init()
        
        self.id = id
        self.event = event
        self.specialty = specialty
        self.name = name
        self.day = day
        self.month = month
        self.stageNumber = stageNumber
    }
    
    
    
}
