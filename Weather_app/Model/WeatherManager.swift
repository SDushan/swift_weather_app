//
//  WeatherManager.swift
//  swift_weather_app
//
//  Created by Dushan on 2021-10-24.
//

import Foundation


struct WeatherManager {
    let weatherURL = "https://api.openweathermap.org/data/2.5/weather?appid=757823edcf1c08d6d81a68c72e21c655&units=metric"
    
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
                    self.parseJSON(weatherData: safeDate)
                }
            }
            task.resume()
        }
    }
    
    func parseJSON(weatherData: Data) {
        let decoder = JSONDecoder()
        do {
            let decodedData = try decoder.decode(WeatherData.self, from: weatherData)
            print(decodedData.name)
        } catch {
            print(error)
        }
    }
    
}
