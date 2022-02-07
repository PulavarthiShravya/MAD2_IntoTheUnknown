//
//  EastViewController.swift
//  IntoTheUnknown
//
//  Created by Pulavarthi Shravya on 26/1/22.
//

import Foundation

import UIKit

class EastViewController: UITableViewController {

    var eastParks =  ["Jalan Pelatok Open Space", "Turnhouse Park", "Pulau Ubin and Chek Jawa", "Changi East Boardwalk", "Changi West Boardwalk", "Changi Beach Park", "Pasir Ris Park", "Pasir Ris Town Park", "Sun Plaza Park", "Sungei Api Api Park", "Tampines Eco Green", "Changi Point Waterfront Park", "Changi Point Promenade"]

    
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
        return eastParks.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCell(withIdentifier: "EastCell", for: indexPath)
        
        let eastPark = eastParks[indexPath.row]
        cell.textLabel!.text = "\(eastPark)"
        return cell
    }
    
}
