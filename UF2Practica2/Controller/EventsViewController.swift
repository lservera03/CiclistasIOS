//
//  EventsViewController.swift
//  UF2Practica2
//
//  Created by Luis Servera  on 01/02/2020.
//  Copyright © 2020 DAM2T. All rights reserved.
//

import UIKit

class EventsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
   
    

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(EventsTableViewCell.self, forCellReuseIdentifier: "eventcell")
    }


    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
          return 1
    }
      
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //tableView.register(EventsTableViewCell.self, forCellReuseIdentifier: "eventcell")
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "eventcell", for: indexPath) as! EventsTableViewCell
        
        cell.name?.text = "Hola"
        //cell.popularity.text = "Mucha"
        
        return cell
    }

}
