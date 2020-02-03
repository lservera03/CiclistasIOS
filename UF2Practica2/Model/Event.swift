//
//  Event.swift
//  UF2Practica2
//
//  Created by dam on 03/02/2020.
//  Copyright © 2020 DAM2T. All rights reserved.
//

import Foundation
import RealmSwift

class Event: Object{
    
    @objc dynamic var id: Int = 0
    @objc dynamic var country: Country? = Country()
    @objc dynamic var name: String = ""
    @objc dynamic var popularity: Int = 0
    @objc dynamic var numberStage: Int = 0
    @objc dynamic var stageKm: Int = 0
    
    
    override class func primaryKey() -> String? {
        return "id"
    }
    
    convenience init(id: Int, country: Country, name: String, popularity: Int, numberStage: Int, stageKm: Int){
        self.init()
        
        self.id = id
        self.country = country
        self.name = name
        self.popularity = popularity
        self.numberStage = numberStage
        self.stageKm = stageKm        
    }
    
}
