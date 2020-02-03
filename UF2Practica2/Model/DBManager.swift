//
//  DBManager.swift
//  UF2Practica2
//
//  Created by dam on 03/02/2020.
//  Copyright © 2020 DAM2T. All rights reserved.
//

import RealmSwift

class DBManager {
  
  private var database: Realm?
  static let sharedInstance = DBManager()
  
  private init() {
    do {
      database = try Realm(configuration: Realm.Configuration())
    } catch let error as NSError {
      fatalError("Error opening realm: \(error)")
    }
  }
  
  //MARK: - ADD
  
  func addData(object: Object) {
    
    do {
      try database?.write {
        database?.add(object)
      }
    } catch {
      #if DEBUG
        print("Could not write to database: ", error)
      #endif
    }
  }
    
  
  
  //MARK: - DELETE
  
  func deleteAllDatabase()  {
    try! database?.write {
      database?.deleteAll()
    }
  }
  
  func deleteFromDb(object: Object) {
    try! database?.write {
      database?.delete(object)
    }
  }
  
  //MARK: - TRANSACTIONS
  
  func beginWriteTransaction() {
    database?.beginWrite()
  }
  
  func commitWriteTransaction() {
    try? database?.commitWrite()
  }
    
  
  func getEvents() -> Results<Event>? {
          return database?.objects(Event.self)
  }
    
  func getCountryById(id: Int) -> Country{
        return (database?.object(ofType: Country.self, forPrimaryKey: id))!
  }
    
    
}
