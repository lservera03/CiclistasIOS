//
//  CiclistsViewController.swift
//  UF2Practica2
//
//  Created by Luis Servera  on 01/02/2020.
//  Copyright © 2020 DAM2T. All rights reserved.
//

import UIKit
import RealmSwift

class CiclistsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    

    @IBOutlet weak var table: UITableView!
     var list: Results<Cyclist>? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()

        loadData()
        table.dataSource = self
        table.delegate = self
        table.register(UINib(nibName: "CyclistsTableViewCell", bundle: nil), forCellReuseIdentifier: "cyclistCell")
    }

    func loadData(){
        if (!DBManager.sharedInstance.getCyclists()!.isEmpty){
            list = DBManager.sharedInstance.getCyclists()!
            list = list?.sorted(byKeyPath: "popularity", ascending: false)
        }
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list!.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cyclist: Cyclist = list![indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "cyclistCell") as! CyclistsTableViewCell
        cell.cyclistImage.image = UIImage(named: "bici")
        cell.cyclistName.text = cyclist.firstName
        cell.cyclistPopularity.text = String(cyclist.popularity)
        cell.cyclistLeader.text = String(cyclist.leader)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }

    

}
