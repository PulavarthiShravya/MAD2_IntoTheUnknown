//
//  SouthViewController.swift
//  IntoTheUnknown
//
//  Created by Pulavarthi Shravya on 26/1/22.
//

import Foundation

import UIKit

class SouthViewController: UITableViewController, UISearchBarDelegate {

    var southParks =  ["Kampong Glam Park", "One-North Park: Mediapolis", "One-North Park: Rochester East", "The Southern Ridges", "Tiong Bahru Park", "Clementi Woods Park", "West Coast Park", "One-North Park: Fusionopolis South", "One-North Park: Rochester West", "Kent Ridge Park", "Telok Blangah Hill Park", "HortPark", "Raffles Place Park", "Handy Road Open Space", "Penang Road Open Space", "National Orchid Garden", "Ann Siang Hill Park", "Duxton Plain Park", "Singapore Botanic Gardens", "Labrador Nature Reserve", "Namly Park", "Novena Rise Park", "Esplanade Park", "one-north Park: Biopolis", "Jacob Ballas Children's Garden", "Pasir Panjang Park", "Telok Ayer Park", "Jambol Place Park", "Pearl's Hill City Park", "Marina Promenade", "War Memorial Park", "Henry Park", "River Valley Road / Clemenceau Avenue Open Space", "Holland Village Park", "Waterboat House Garden", "Rowell Road Open Space", "Youth Olympic Park", "Berlayer Creek", "Kim Pong Park", "Novena Park", "Lembu Road Open Space", "Malcolm Park", "The Foothills Fort Canning Park", "Ganges Avenue Open Space", "Fort Canning Park", "Bougainvillea Park", "North Bridge Garden", "Istana Park", "Kim Seng Park", "Telok Ayer Green", "University Road Park", "Stamford Green", "Duchess Park", "Mount Faber Park", "Empress Place", "Kallang Riverside Park", "Mount Emily Park", "Dhoby Ghaut Green"]
    
    var filteredData: [String]!
    
    @IBOutlet weak var searchBar: UISearchBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //self.tableView.reloadData()
        searchBar.delegate = self
        filteredData = southParks
    }
    
    override func viewDidAppear(_ animated: Bool) {
        self.tableView.reloadData()
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //number of rows
        return filteredData.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCell(withIdentifier: "SouthCell", for: indexPath)
        
        cell.textLabel!.text = filteredData[indexPath.row]
        return cell
    }
    
    //search bar method
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        filteredData = []
        
        if searchText == "" {
            filteredData = southParks //show all the data
        }
        else {
            //for loop
            for parks in southParks {
                //changing the text enetered & data to lowercase to match
                if parks.lowercased().contains(searchText.lowercased()) {
                    filteredData.append(parks)
                }
            }
            //refresh data based on text entered
            self.tableView.reloadData()
        }
    }
    
}
