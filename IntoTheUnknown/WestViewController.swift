//
//  WestViewController.swift
//  IntoTheUnknown
//
//  Created by Pulavarthi Shravya on 26/1/22.
//

import Foundation

import UIKit

class WestViewController: UITableViewController {

    var westParks =  ["Jurong Lake Gardens", "Sunset Way Park", "Jurong Central Park", "Faber Height Open Space", "Bukit Batok Nature Park", "Sunset Heights Open Space", "Yunnan Park", "Bukit Batok Town Park", "Jalan Remaja Interim Park"]

    
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
        return westParks.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCell(withIdentifier: "WestCell", for: indexPath)
        
        let westPark = westParks[indexPath.row]
        cell.textLabel!.text = "\(westPark)"
        return cell
    }
    
}
