//
//  WeatherManager.swift
//  swift_weather_app
//
//  Created by Dushan on 2021-10-24.
//

import Foundation


struct WeatherManager {
    let weatherURL = "https://api.openweathermap.org/data/2.5/weather?appid={API Key}&units=metric"
    
    func fetchWeather(cityName: String){
        let urlString = "\(weatherURL)&q=\(cityName)"
        performRequest(urlString: urlString)
    }
    
    func performRequest(urlString: String){
        if let url = URL(string: urlString){
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { (data, response, error) in
                if error != nil {
                    print(error!)
                    return
                }
                
                if let safeDate = data {
                    
                }
            }
            task.resume()
        }
    }
    
}
