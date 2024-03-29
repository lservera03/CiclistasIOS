//
//  EventsViewController.swift
//  UF2Practica2
//
//  Created by Luis Servera  on 01/02/2020.
//  Copyright © 2020 DAM2T. All rights reserved.
//

import UIKit
import RealmSwift

class EventsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{

    @IBOutlet weak var tableView: UITableView!
    var list: Results<Event>? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()

        loadData()
        tableView.dataSource = self
        tableView.delegate = self
        tableView.tableFooterView = UIView()
        tableView.register(UINib(nibName: "EventsTableViewCell", bundle: nil), forCellReuseIdentifier: "eventCell")
    }
    
    /*
     Metodo que permite cargar de la base de datos la informacion de los eventos
     */
    func loadData(){
        if (!DBManager.sharedInstance.getEvents()!.isEmpty){
            list = DBManager.sharedInstance.getEvents()!
            list = list?.sorted(byKeyPath: "popularity", ascending: false)
        }        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list!.count
    }
      
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let event: Event = list![indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "eventCell") as! EventsTableViewCell
        cell.eventImage.image = UIImage(named: "event")
        cell.eventName.text = event.name
        cell.eventPopularity.text = String(event.popularity)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let event: Event = list![indexPath.row]
        let eventDetail = EventDetailViewController()
        
        eventDetail.event = event
        navigationController?.pushViewController(eventDetail, animated: true)
    }

}
