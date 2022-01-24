//
//  NorthCoreDataAccessLayer.swift
//  IntoTheUnknown
//
//  Created by Pulavarthi Shravya on 24/1/22.
//

import Foundation
import UIKit
import CoreData

//data access layer
class NorthCoreDataAccessLayer{
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    init(){
        
    }
    
    //Challenge *
    //checking if the cinema exist
    func northParkExist(park:NorthParks)->Bool{
        let context = appDelegate.persistentContainer.viewContext
        
        var exist:Bool = false
        //Predicate 'cinema_id == %@'
        return exist
    }
    
    func AddPark(park:NorthParks){
        //copy and paste the code from telegramme
        if (!northParkExist(park: park)) //if cinema does not exist
        {
            //Add to core data
            let context = appDelegate.persistentContainer.viewContext
            let entity = NSEntityDescription.entity(forEntityName: "CoreDataParkNorth", in: context)!
            
            let cdNorth = NSManagedObject(entity: entity, insertInto: context)
            cdNorth.setValue(park.park_name, forKey: "park_name")
            
            do {
                try context.save()
            } catch let error as NSError {
                print("Could not save. \(error) \(error.userInfo)")
            }
        }
    }
    
    func RetrieveAllNorth()->[NorthParks]{
        var northList:[NorthParks] = []
        var managednorthList:[NSManagedObject] = []
        let context = appDelegate.persistentContainer.viewContext
        let fetchRequest = NSFetchRequest<NSManagedObject>(entityName: "CoreDataParkNorth")
        do {
            managednorthList = try context.fetch(fetchRequest)
            for n in managednorthList {
                let park_name = n.value(forKeyPath: "park_name") as! String
                let park:NorthParks = NorthParks(name: park_name)
                northList.append(park)
            }
            
        } catch let error as NSError {
            print("Could not fetch. \(error) \(error.userInfo)")
        }
        return northList
    }
}
