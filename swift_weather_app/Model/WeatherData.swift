//
//  WeatherData.swift
//  swift_weather_app
//
//  Created by Dushan on 2021-10-25.
//

import Foundation

struct WeatherData: Decodable {
    let name: String
    let main: Main
    let weather: [Weather]
}

struct Main: Decodable {
    let temp: Double
}

struct Weather: Decodable {
    let description: String
    let id: Int
}
