//
//  EastViewController.swift
//  IntoTheUnknown
//
//  Created by Pulavarthi Shravya on 26/1/22.
//

import Foundation

import UIKit

class EastViewController: UITableViewController {

    var eastParks:[EastParks] =  [EastParks(parkeast: "Jalan Pelatok Open Space"),
                                  EastParks(parkeast: "Turnhouse Park"),
                                  EastParks(parkeast: "Pulau Ubin and Chek Jawa"),
                                  EastParks(parkeast: "Changi East Boardwalk"),
                                  EastParks(parkeast: "Changi West Boardwalk"),
                                  EastParks(parkeast: "Changi Beach Park"),
                                  EastParks(parkeast: "Pasir Ris Park"),
                                  EastParks(parkeast: "Pasir Ris Town Park"),
                                  EastParks(parkeast: "Sun Plaza Park"),
                                  EastParks(parkeast: "Sungei Api Api Park"),
                                  EastParks(parkeast: "Tampines Eco Green"),
                                  EastParks(parkeast: "Changi Point Waterfront Park"),
                                  EastParks(parkeast: "Changi Point Promenade")]

    
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
        cell.textLabel!.text = "\(eastPark.parkEast)"
        return cell
    }
    
}
