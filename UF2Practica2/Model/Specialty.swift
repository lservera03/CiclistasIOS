//
//  Specialty.swift
//  UF2Practica2
//
//  Created by dam on 03/02/2020.
//  Copyright © 2020 DAM2T. All rights reserved.
//

import Foundation
import RealmSwift
import UIKit


class Specialty: Object{
    
    @objc dynamic var id: Int = 0
    @objc dynamic var name: String = ""
    
    
    convenience init(id: Int, name: String){
           self.init()
           
           self.id = id
           self.name = name
       }
    
}
