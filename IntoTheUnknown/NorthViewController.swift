//
//  NorthViewController.swift
//  IntoTheUnknown
//
//  Created by Pulavarthi Shravya on 24/1/22.
//

import Foundation
import UIKit

class NorthViewController: UITableViewController {

    var northParks =  ["Spring Leaf Avenue Playground", "Pebble Garden", "Sembawang Park", "Brooks Park", "Kandis Garden", "Lower Seletar Reservoir Park", "Admiralty Park", "Yishun Pond Park", "Yishun Park", "Woodlands Town Park East", "Woodlands Waterfront Park", "Jalan Kemuning Park", "Springside Park", "Janggus Garden", "Yishun Neighbourhood Park", "Sembawang Hot Spring Park"]

    
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
        return northParks.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCell(withIdentifier: "NorthCell", for: indexPath)
        
        let northPark = northParks[indexPath.row]
        cell.textLabel!.text = "\(northPark)"
        return cell
    }
    
}

