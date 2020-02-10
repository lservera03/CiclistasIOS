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
        cell.cyclistImage.image = UIImage(named: "cyclist")
        cell.cyclistName.text = cyclist.firstName + " " + cyclist.lastName
        cell.cyclistPopularity.text = String(cyclist.popularity)
        if(cyclist.leader){
            cell.cyclistLeader.alpha = 1
        }else{
            cell.cyclistLeader.alpha = 0
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cyclist: Cyclist = list![indexPath.row]
        let cyclistDetail = CyclistDetailViewController()
        
        cyclistDetail.cyclist = cyclist
        navigationController?.pushViewController(cyclistDetail, animated: true)
    }

    

}
