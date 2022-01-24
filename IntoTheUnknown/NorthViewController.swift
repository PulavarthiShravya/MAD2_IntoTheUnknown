//
//  NorthViewController.swift
//  IntoTheUnknown
//
//  Created by Pulavarthi Shravya on 24/1/22.
//

import Foundation
import UIKit

class NorthViewController: UIViewController {
    
    @IBOutlet weak var parkNameLabel: UILabel!
    
    override func viewDidLoad() {
        //array to store park names
        
        //api url
        guard let url = URL(string: "https://tih-api.stb.gov.sg/national-park/v1?location=1.461502967101%2C103.836845425704&radius=7000&apikey=AuCxF2XWFwNxlSdoWjOYHE71fJqRgi0j")
        else { return }
        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in if let data = data, error == nil {
                do {
                    guard let json = try JSONSerialization.jsonObject(with: data, options: .mutableContainers) as? [String: Any] else { return }
                    guard let parkDetails = json["data"] as? [[String: Any]]else { return }
                    
                    for p in parkDetails {
                        
                    }
                    /*let parkName = (parkDetails.first?["name"] as? String)
                    DispatchQueue.main.async {
                        self.setPark(parkName: parkName)
                    }*/
                } catch {
                print("Unable to retrieve park")
                }
            }
        }
        task.resume()
    }
    
    func setPark(parkName: String?) {
        parkNameLabel.text = parkName
    }
}
