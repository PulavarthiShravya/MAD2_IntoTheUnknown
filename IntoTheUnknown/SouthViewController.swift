//
//  SouthViewController.swift
//  IntoTheUnknown
//
//  Created by Pulavarthi Shravya on 26/1/22.
//

import Foundation

import UIKit

class SouthViewController: UITableViewController {

    var southParks:[SouthParks] =  [SouthParks(parksouth: "Kampong Glam Park"),
                                    SouthParks(parksouth: "One-North Park: Mediapolis"),
                                    SouthParks(parksouth: "One-North Park: Rochester East"),
                                    SouthParks(parksouth: "The Southern Ridges"),
                                    SouthParks(parksouth: "Tiong Bahru Park"),
                                    SouthParks(parksouth: "Clementi Woods Park"),
                                    SouthParks(parksouth: "West Coast Park"),
                                    SouthParks(parksouth: "One-North Park: Fusionopolis South"),
                                    SouthParks(parksouth: "One-North Park: Rochester West"),
                                    SouthParks(parksouth: "Kent Ridge Park"),
                                    SouthParks(parksouth: "Telok Blangah Hill Park"),
                                    SouthParks(parksouth: "HortPark"),
                                    SouthParks(parksouth: "Raffles Place Park"),
                                    SouthParks(parksouth: "Handy Road Open Space"),
                                    SouthParks(parksouth: "Penang Road Open Space"),
                                    SouthParks(parksouth: "National Orchid Garden"),
                                    SouthParks(parksouth: "Ann Siang Hill Park"),
                                    SouthParks(parksouth: "Duxton Plain Park"),
                                    SouthParks(parksouth: "Singapore Botanic Gardens"),
                                    SouthParks(parksouth: "Labrador Nature Reserve"),
                                    SouthParks(parksouth: "Namly Park"),
                                    SouthParks(parksouth: "Novena Rise Park"),
                                    SouthParks(parksouth: "Esplanade Park"),
                                    SouthParks(parksouth: "one-north Park: Biopolis"),
                                    SouthParks(parksouth: "Jacob Ballas Children's Garden"),
                                    SouthParks(parksouth: "Pasir Panjang Park"),
                                    SouthParks(parksouth: "Telok Ayer Park"),
                                    SouthParks(parksouth: "Jambol Place Park"),
                                    SouthParks(parksouth: "Pearl's Hill City Park"),
                                    SouthParks(parksouth: "Marina Promenade"),
                                    SouthParks(parksouth: "War Memorial Park"),
                                    SouthParks(parksouth: "Henry Park"),
                                    SouthParks(parksouth: "River Valley Road / Clemenceau Avenue Open Space"),
                                    SouthParks(parksouth: "Holland Village Park"),
                                    SouthParks(parksouth: "Waterboat House Garden"),
                                    SouthParks(parksouth: "Rowell Road Open Space"),
                                    SouthParks(parksouth: "Youth Olympic Park"),
                                    SouthParks(parksouth: "Berlayer Creek"),
                                    SouthParks(parksouth: "Kim Pong Park"),
                                    SouthParks(parksouth: "Novena Park"),
                                    SouthParks(parksouth: "Lembu Road Open Space"),
                                    SouthParks(parksouth: "Malcolm Park"),
                                    SouthParks(parksouth: "The Foothills Fort Canning Park"),
                                    SouthParks(parksouth: "Ganges Avenue Open Space"),
                                    SouthParks(parksouth: "Fort Canning Park"),
                                    SouthParks(parksouth: "Bougainvillea Park"),
                                    SouthParks(parksouth: "North Bridge Garden"),
                                    SouthParks(parksouth: "Istana Park"),
                                    SouthParks(parksouth: "Kim Seng Park"),
                                    SouthParks(parksouth: "Telok Ayer Green"),
                                    SouthParks(parksouth: "University Road Park"),
                                    SouthParks(parksouth: "Stamford Green"),
                                    SouthParks(parksouth: "Duchess Park"),
                                    SouthParks(parksouth: "Mount Faber Park"),
                                    SouthParks(parksouth: "Empress Place"),
                                    SouthParks(parksouth: "Kallang Riverside Park"),
                                    SouthParks(parksouth: "Mount Emily Park"),
                                    SouthParks(parksouth: "Dhoby Ghaut Green")]

    
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
        return southParks.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCell(withIdentifier: "SouthCell", for: indexPath)
        
        let southPark = southParks[indexPath.row]
        cell.textLabel!.text = "\(southPark.parkSouth)"
        return cell
    }
    
}
