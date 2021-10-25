//
//  WeatherData.swift
//  swift_weather_app
//
//  Created by Dushan on 2021-10-25.
//

import Foundation

struct WeatherData: Codable {
    let name: String
    let main: Main
    let weather: [Weather]
}

struct Main: Codable {
    let temp: Double
}

struct Weather: Codable {
    let description: String
    let id: Int
}
