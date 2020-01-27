//
//  EventosViewController.swift
//  UF2Practica2
//
//  Created by dam on 27/01/2020.
//  Copyright © 2020 DAM2T. All rights reserved.
//

import UIKit

class EventosViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet var table: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
            
        table.delegate = self
        table.dataSource = self
        // Do any additional setup after loading the view.
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print("celda")
        let cell = tableView.dequeueReusableCell(withIdentifier: "eventcell", for: indexPath)
                           as! TableViewCell
        cell.label.text = "hola"
        
        
        return cell
    }


    
}
