//
//  ViewController.swift
//  Weather App
//
//  Created by Jaeho Lee on 25/06/2019.
//  Copyright © 2019 Jaeho Lee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  var weather: Weather? = Weather(kelvinTemp: 293,
                                  weather: "Sunny",
                                  humidity: 0.2,
                                  windSpeed: 1)
  
  var isCelsius = true
  
  lazy var notCelsius = !isCelsius
  
  @IBOutlet weak var temperatureLabel: UILabel! {
    didSet {
      temperatureLabel.text = String(format: "%0.0f˚", weather!.celsiusTemp)
    }
  }
  
  @IBOutlet weak var convertButton: UIButton! {
    didSet {
      convertButton.layer.cornerRadius = convertButton.bounds.width / 2
    }
  }
  
  @IBAction func convertTemperature(_ sender: UIButton) {
    if isCelsius {
      temperatureLabel.text = String(format: "%0.0f˚", weather!.fahrenheihtTemp)
      sender.setTitle("to C", for: .normal)
      isCelsius = false
    } else {
      temperatureLabel.text = String(format: "%0.0f˚", weather!.celsiusTemp)
      sender.setTitle("to F", for: .normal)
      isCelsius = true
    }
  }
}
