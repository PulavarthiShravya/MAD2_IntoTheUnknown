//
//  WeatherViewController.swift
//  IntoTheUnknown
//
//  Created by Pulavarthi Shravya on 18/1/22.
//

import Foundation
import UIKit


class WeatherViewController: UIViewController {
    
    @IBOutlet weak var tempLabel: UILabel!
    
    @IBOutlet weak var weatherDescriptionLabel: UILabel!
    
    @IBOutlet weak var weatherImageView: UIImageView!
    
    @IBOutlet weak var highestTempLabel: UILabel!
    
    @IBOutlet weak var lowestTempLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //api url
        guard let url = URL(string: "https://api.openweathermap.org/data/2.5/weather?q=Singapore&units=metric&appid=2208cad7b3134f7a764a2d2acde4b635") else { return }
        
        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in if let data = data, error == nil {
                do {
                    guard let json = try JSONSerialization.jsonObject(with: data, options: .mutableContainers) as? [String: Any] else { return }
                    guard let weatherDetails = json["weather"] as? [[String: Any]], let weatherMain = json["main"] as? [String: Any] else { return }
                    let temp = Int(weatherMain["temp"] as? Double ?? 0)
                    let description = (weatherDetails.first?["description"] as? String)
                    let highestTemp = Int(weatherMain["temp_max"] as? Double ?? 0)
                    let lowestTemp = Int(weatherMain["temp_min"] as? Double ?? 0)
                    DispatchQueue.main.async {
                        self.setWeather(weather: weatherDetails.first?["main"] as? String, description: description, temp: temp, highestTemp: highestTemp, lowestTemp: lowestTemp)
                    }
                } catch {
                print("Unable to retrieve weather")
                }
            }
        }
        task.resume()
    }
    
    func setWeather(weather: String?, description: String?, temp: Int, highestTemp: Int, lowestTemp: Int) {
        weatherDescriptionLabel.text = description ?? "..."
        tempLabel.text = "\(temp)°C"
        highestTempLabel.text = "\(highestTemp)°C"
        lowestTempLabel.text = "\(lowestTemp)°C"
        
        if weatherDescriptionLabel.text == "sunny" || weatherDescriptionLabel.text == "clear sky" {
            weatherImageView.image = UIImage(named: "clear")
        
        }
        else if weatherDescriptionLabel.text == "broken clouds" || weatherDescriptionLabel.text == "scattered clouds"{
                
                weatherImageView.image = UIImage(named: "cloud")
        }
        else {
                weatherImageView.image = UIImage(named: "rain")
        }
    }
}
