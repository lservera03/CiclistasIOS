//
//  CiclistasTableViewController.swift
//  UF2Practica2
//
//  Created by dam on 28/01/2020.
//  Copyright © 2020 DAM2T. All rights reserved.
//

import UIKit

class CiclistasTableViewController: UITableViewController {
        
    @IBOutlet var table: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        table.delegate = self
        table.dataSource = self
    }


    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }

    
}
