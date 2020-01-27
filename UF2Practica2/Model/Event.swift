//
//  Event.swift
//  UF2Practica2
//
//  Created by dam on 27/01/2020.
//  Copyright © 2020 DAM2T. All rights reserved.
//

import Foundation
import UIKit


class Event{
    
    
    var name: String
    var image: UIImage
    var popularity: Int
    
    init(name: String, image: UIImage, popularity: Int){
        self.image = image
        self.popularity = popularity
        self.name = name
    }
    
    
}
