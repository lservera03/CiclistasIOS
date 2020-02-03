//
//  TeamRace.swift
//  UF2Practica2
//
//  Created by dam on 03/02/2020.
//  Copyright © 2020 DAM2T. All rights reserved.
//

import Foundation
import UIKit
import RealmSwift


class TeamRace: Object{
    
    @objc dynamic var team: Team? = Team()
    @objc dynamic var event: Event? = Event()
    
    convenience init(team: Team, event: Event){
        self.init()
        
        self.team = team
        self.event = event
    }
    
    
}
