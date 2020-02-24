//
//  CiclistsViewController.swift
//  UF2Practica2
//
//  Created by Luis Servera  on 01/02/2020.
//  Copyright © 2020 DAM2T. All rights reserved.
//

import UIKit
import RealmSwift

class CiclistsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, ButtonDelegate  {
    
    /*
     Metodo implementado del protocolo delegado
     */
    func delegateMethod(posicion: Int) {
        deleteCyclist(posicion: posicion)
    }
    
    @IBOutlet weak var buttonAdd: UIButton!
    @IBOutlet weak var table: UITableView!
     var list: Results<Cyclist>? = nil
     var arrayRealm: Array<Cyclist> = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        table.dataSource = self
        table.delegate = self
        table.tableFooterView = UIView()
        table.register(UINib(nibName: "CyclistsTableViewCell", bundle: nil), forCellReuseIdentifier: "cyclistCell")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        loadData()
    }

    /*
     Metodo que permite cargar de la base de datos todos los ciclistas
     */
    func loadData(){
        if (!DBManager.sharedInstance.getCyclists()!.isEmpty){
            list = DBManager.sharedInstance.getCyclists()!
            list = list?.sorted(byKeyPath: "popularity", ascending: false)
            arrayRealm = Array(list!)
        }
        table.reloadData()
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayRealm.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cyclist: Cyclist = list![indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "cyclistCell") as! CyclistsTableViewCell
        cell.delegate = self
        cell.cyclistImage.image = UIImage(named: "cyclist")
        cell.cyclistName.text = cyclist.firstName + " " + cyclist.lastName
        cell.cyclistPopularity.text = String(cyclist.popularity)
        if(cyclist.leader){
            cell.cyclistLeader.alpha = 1
        }else{
            cell.cyclistLeader.alpha = 0
        }
        cell.button.tag = indexPath.row
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
    
    /*
     Metodo que permite borrar un ciclista de la base de datos
     */
    func deleteCyclist(posicion: Int){
        DBManager.sharedInstance.deleteFromDb(object: arrayRealm[posicion])
        arrayRealm.remove(at: posicion)
        loadData()
    }

    /*
     Metodo que se ejecuta al pulsar el boton de añadir ciclista
     */
    @IBAction func addCyclist(_ sender: UIButton) {
        let detailCyclist = CyclistDetailViewController()
        navigationController?.pushViewController(detailCyclist, animated: true)
    }
    
}
