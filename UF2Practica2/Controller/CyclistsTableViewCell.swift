//
//  CycliststTableViewCell.swift
//  UF2Practica2
//
//  Created by Luis Servera  on 08/02/2020.
//  Copyright © 2020 DAM2T. All rights reserved.
//

import UIKit

protocol ButtonDelegate{
    func delegateMethod(posicion: Int)
}

class CyclistsTableViewCell: UITableViewCell {

    @IBOutlet weak var cyclistImage: UIImageView!
    @IBOutlet weak var cyclistName: UILabel!
    @IBOutlet weak var cyclistPopularity: UILabel!
    @IBOutlet weak var cyclistLeader: UILabel!
    @IBOutlet weak var button: UIButton!
    var delegate: ButtonDelegate?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func pulsado(_ sender: UIButton) {
        delegate?.delegateMethod(posicion:sender.tag)
    }
}
