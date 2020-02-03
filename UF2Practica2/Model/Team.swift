//
//  Team.swift
//  UF2Practica2
//
//  Created by dam on 03/02/2020.
//  Copyright © 2020 DAM2T. All rights reserved.
//

import Foundation
import UIKit
import RealmSwift


class Team: Object{
    
    @objc dynamic var id: Int = 0
    @objc dynamic var country: String = ""
    @objc dynamic var name: String = ""
    @objc dynamic var manager: String = ""
    
    
    convenience init(id: Int, country: String, name: String, manager: String){
        self.init()
        
        self.id = id
        self.country = country
        self.name = name
        self.manager = manager
    }
    
    
    
    
    
    
}
