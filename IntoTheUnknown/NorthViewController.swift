//
//  NorthViewController.swift
//  IntoTheUnknown
//
//  Created by Pulavarthi Shravya on 24/1/22.
//

import Foundation
import UIKit

class NorthViewController: UITableViewController {
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.reloadData()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        self.tableView.reloadData()
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //from app delegate
        return appDelegate.northParks.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCell(withIdentifier: "NorthCell", for: indexPath)
        
        let northPark = appDelegate.northParks[indexPath.row]
        cell.textLabel!.text = "\(northPark.parkNorth)"
        return cell
    }
    
}

