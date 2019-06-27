//
//  Weather.swift
//  Weather App
//
//  Created by Jaeho Lee on 25/06/2019.
//  Copyright © 2019 Jaeho Lee. All rights reserved.
//

import Foundation

struct Weather {
  var kelvinTemp: Float
  
  var celsiusTemp: Float {
    return kelvinTemp - 273.15
  }
  
  var fahrenheihtTemp: Float {
    return Weather.toFahrenheit(from: celsiusTemp)
  }
  
  var weather: String
  var humidity: Float
  var windSpeed: Float
  
  private static func toFahrenheit(from celsius: Float) -> Float {
    return celsius * 1.8 + 32
  }
  
  private static func toCelsius(from fahrenheit: Float) -> Float {
    return (fahrenheit - 32) / 1.8
  }
}
