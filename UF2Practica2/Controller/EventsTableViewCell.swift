//
//  EventsTableViewCell.swift
//  UF2Practica2
//
//  Created by Luis Servera  on 01/02/2020.
//  Copyright © 2020 DAM2T. All rights reserved.
//

import UIKit

class EventsTableViewCell: UITableViewCell {

   
    @IBOutlet var eventImage: UIImageView!
    @IBOutlet var eventName: UILabel!
    @IBOutlet var eventPopularity: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
