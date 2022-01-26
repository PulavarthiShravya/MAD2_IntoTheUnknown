//
//  PGViewController.swift
//  IntoTheUnknown
//
//  Created by Pulavarthi Shravya on 26/1/22.
//

import Foundation

import UIKit

class PGViewController: UITableViewController {
    
    let playGrounds:[Playgrounds] = [Playgrounds(playgroundnames: "Platina Road Playground", playgroundzone: "North"),
                                     Playgrounds(playgroundnames: "Goodlink Park Playground", playgroundzone: "North"),
                                     Playgrounds(playgroundnames: "Taman Mas Merah Playground", playgroundzone: "South"),
                                     Playgrounds(playgroundnames: "Jalan Mas Puteh Playground", playgroundzone: "South"),
                                     Playgrounds(playgroundnames: "Kitchener Green Playground", playgroundzone: "South"),
                                     Playgrounds(playgroundnames: "Hooper Road Playground", playgroundzone: "South"),
                                     Playgrounds(playgroundnames: "Chwee Chian Playground", playgroundzone: "South"),
                                     Playgrounds(playgroundnames: "Thomson Road Playground", playgroundzone: "South"),
                                     Playgrounds(playgroundnames: "Gentle Drive Playground", playgroundzone: "South"),
                                     Playgrounds(playgroundnames: "Goldhill Avenue Playground", playgroundzone: "South"),
                                     Playgrounds(playgroundnames: "Orchid Village Playground", playgroundzone: "South"),
                                     Playgrounds(playgroundnames: "Clementi Crescent Playground", playgroundzone: "South"),
                                     Playgrounds(playgroundnames: "Sixth Avenue Playground", playgroundzone: "South"),
                                     Playgrounds(playgroundnames: "Watten Heights Playground", playgroundzone: "South"),
                                     Playgrounds(playgroundnames: "Grove Lane Playground", playgroundzone: "South"),
                                     Playgrounds(playgroundnames: "Greenwood Crescent Playground", playgroundzone: "South"),
                                     Playgrounds(playgroundnames: "Jalan Kebaya Playground", playgroundzone: "South"),
                                     Playgrounds(playgroundnames: "Shelford Road Playground", playgroundzone: "South"),
                                     Playgrounds(playgroundnames: "Holland Green Playground", playgroundzone: "South"),
                                     Playgrounds(playgroundnames: "Mount Sinai Plain Playground", playgroundzone: "South"),
                                     Playgrounds(playgroundnames: "Holland Grove View Playground", playgroundzone: "South"),
                                     Playgrounds(playgroundnames: "Greenleaf View Park Playground", playgroundzone: "South"),
                                     Playgrounds(playgroundnames: "King's Drive  Playground", playgroundzone: "South"),
                                     Playgrounds(playgroundnames: "Somme Road Playground", playgroundzone: "South"),
                                     Playgrounds(playgroundnames: "Coronation Park Playground", playgroundzone: "South"),
                                     Playgrounds(playgroundnames: "Mariam Way Playground", playgroundzone: "East"),
                                     Playgrounds(playgroundnames: "Mariam Walk Playground", playgroundzone: "East"),
                                     Playgrounds(playgroundnames: "Changi Heights Playground", playgroundzone: "East"),
                                     Playgrounds(playgroundnames: "Jalan Pelatok Playground", playgroundzone: "East"),
                                     Playgrounds(playgroundnames: "Mera Terrace Playground", playgroundzone: "East"),
                                     Playgrounds(playgroundnames: "Loyang View Playground", playgroundzone: "East"),
                                     Playgrounds(playgroundnames: "Meragi Road Playground", playgroundzone: "East"),
                                     Playgrounds(playgroundnames: "Elias Terrace Playground", playgroundzone: "East"),
                                     Playgrounds(playgroundnames: "Greenridge Crescent Playground", playgroundzone: "West"),
                                     Playgrounds(playgroundnames: "Savoy Park Playground", playgroundzone: "West"),
                                     Playgrounds(playgroundnames: "Westwood Park Playground", playgroundzone: "West"),
                                     Playgrounds(playgroundnames: "Chu Yen Playground", playgroundzone: "West"),
                                     Playgrounds(playgroundnames: "Hillview Crescent Playground", playgroundzone: "West"),
                                     Playgrounds(playgroundnames: "Sunset Way Playground", playgroundzone: "West"),
                                     Playgrounds(playgroundnames: "Faber Hill Playground", playgroundzone: "West"),
                                     Playgrounds(playgroundnames: "Burgundy Crescent Playground", playgroundzone: "West"),
                                     Playgrounds(playgroundnames: "Lorong Kemunchup Playground", playgroundzone: "West"),
                                     Playgrounds(playgroundnames: "Pavilion Park Playground", playgroundzone: "West"),
                                     Playgrounds(playgroundnames: "West Coast Green Playground", playgroundzone: "West"),
                                     Playgrounds(playgroundnames: "Jalan Dermawan Playground", playgroundzone: "West"),
                                     Playgrounds(playgroundnames: "West Coast Place Playground", playgroundzone: "West"),
                                     Playgrounds(playgroundnames: "Westville Playground", playgroundzone: "West"),
                                     Playgrounds(playgroundnames: "Jalan Mas Puteh Playground", playgroundzone: "West"),
                                     Playgrounds(playgroundnames: "Lakeside Grove Playground", playgroundzone: "West"),
                                     Playgrounds(playgroundnames: "Phoenix Heights Playground", playgroundzone: "West"),
                                     Playgrounds(playgroundnames: "Eng Kong Garden Playground", playgroundzone: "West"),
                                     Playgrounds(playgroundnames: "Jalan Tekukor Playground", playgroundzone: "West"),
                                     Playgrounds(playgroundnames: "Highgate Walk Playground", playgroundzone: "West"),
                                     Playgrounds(playgroundnames: "Golden Rise Playground", playgroundzone: "South")]

    
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
        return playGrounds.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCell(withIdentifier: "PlayGCell", for: indexPath)
        
        let names = playGrounds[indexPath.row]
        cell.textLabel!.text = "\(names.playgroundNames)"
        cell.detailTextLabel!.text = "\(names.playgroundZone)"
        return cell
    }
    
}
