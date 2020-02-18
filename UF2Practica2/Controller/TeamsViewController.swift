//
//  TeamsViewController.swift
//  UF2Practica2
//
//  Created by Luis Servera  on 08/02/2020.
//  Copyright © 2020 DAM2T. All rights reserved.
//

import UIKit
import RealmSwift

class TeamsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource  {
    
    @IBOutlet weak var tableView: UITableView!
    var list: Results<Team>? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()

        loadData()
        tableView.dataSource = self
        tableView.delegate = self
        tableView.tableFooterView = UIView()
        tableView.register(UINib(nibName: "TeamTableViewCell", bundle: nil), forCellReuseIdentifier: "teamCell")
    }
    
    func loadData(){
        if (!DBManager.sharedInstance.getTeams()!.isEmpty){
            list = DBManager.sharedInstance.getTeams()!
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list!.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let team: Team = list![indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "teamCell") as! TeamTableViewCell
        cell.teamImage.image = UIImage(named: "team")
        cell.teamName.text = team.name
        cell.teamManager.text = team.manager
        cell.teamCountry.text = team.country
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }




}
