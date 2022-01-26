//
//  NorthViewController.swift
//  IntoTheUnknown
//
//  Created by Pulavarthi Shravya on 24/1/22.
//

import Foundation
import UIKit

class NorthViewController: UITableViewController {

    var northParks:[NorthParks] =  [NorthParks(parknorth: "Spring Leaf Avenue Playground"),
                                    NorthParks(parknorth: "Pebble Garden"),
                                    NorthParks(parknorth: "Sembawang Park"),
                                    NorthParks(parknorth: "Brooks Park"),
                                    NorthParks(parknorth: "Kandis Garden"),
                                    NorthParks(parknorth: "Lower Seletar Reservoir Park"),
                                    NorthParks(parknorth: "Admiralty Park"),
                                    NorthParks(parknorth: "Yishun Pond Park"),
                                    NorthParks(parknorth: "Yishun Park"),
                                    NorthParks(parknorth: "Woodlands Town Park East"),
                                    NorthParks(parknorth: "Woodlands Waterfront Park"),
                                    NorthParks(parknorth: "Jalan Kemuning Park"),
                                    NorthParks(parknorth: "Springside Park"),
                                    NorthParks(parknorth: "Janggus Garden"),
                                    NorthParks(parknorth: "Yishun Neighbourhood Park"),
                                    NorthParks(parknorth: "Sembawang Hot Spring Park")]

    
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
        cell.textLabel!.text = "\(northPark.parkNorth)"
        return cell
    }
    
}

