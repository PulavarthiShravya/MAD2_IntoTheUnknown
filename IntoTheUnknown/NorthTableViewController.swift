//
//  NorthTableViewController.swift
//  IntoTheUnknown
//
//  Created by Pulavarthi Shravya on 24/1/22.
//

import Foundation
import UIKit

class NorthTableViewController : UITableViewController {
    
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    var northList:[NorthParks] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let northDAL:NorthCoreDataAccessLayer = NorthCoreDataAccessLayer()
        northList = northDAL.RetrieveAllNorth()
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return northList.count
    }
    
    //display in the table view cell
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "parkCell", for: indexPath)
        cell.textLabel?.text = northList[indexPath.row].park_name!
        return cell
    }
}
