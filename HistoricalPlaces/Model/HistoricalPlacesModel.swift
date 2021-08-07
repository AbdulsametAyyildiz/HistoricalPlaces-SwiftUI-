//
//  HistoricalPlacesModel.swift
//  HistoricalPlaces
//
//  Created by Abdussamed on 7.08.2021.
//

import Foundation
import SwiftUI
import CoreLocation

struct HistoricalPlacesModel: Identifiable {
    
    var id = UUID()
    var placeName: String
    var placeCity: String
    var placeBuildingYear: Int
    var placeBuilder: String
    var imageName: String
    var placeCoordinate: Coordinate
    var placeLocation : CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: placeCoordinate.lat, longitude: placeCoordinate.lon)
    }
    
}

let ayasofya = HistoricalPlacesModel(placeName: "Ayasofya Mosque", placeCity: "Istanbul, Turkey", placeBuildingYear: 537, placeBuilder: "I. Justinianus", imageName: "ayasofya", placeCoordinate: Coordinate(lat: 41.008728708952184, lon: 28.98014281171442))

let topkapiPalace = HistoricalPlacesModel(placeName: "Topkapı Palace", placeCity: "Istanbul, Turkey", placeBuildingYear: 1478, placeBuilder: "Fatih Sultan Mehmet Khan", imageName: "topkapi", placeCoordinate: Coordinate(lat: 41.0115194793004, lon: 28.98342181356559))

let ciraganPalace = HistoricalPlacesModel(placeName: "Çıragan Palace", placeCity: "Istanbul, Turkey", placeBuildingYear: 1867, placeBuilder: "Soltan I.Abdülaziz", imageName: "cıragan", placeCoordinate: Coordinate(lat: 41.04386793758354, lon: 29.016097086312858))

let dolmabahcePalace = HistoricalPlacesModel(placeName: "Dolmabahçe Sarayı", placeCity: "Istanbul, Turkey", placeBuildingYear: 1856, placeBuilder: "I.Abdülmecid", imageName: "dolmabahce", placeCoordinate: Coordinate(lat: 41.039204740995274, lon: 29.000459398222784))

let tacMahal = HistoricalPlacesModel(placeName: "Tac Mahal", placeCity: "Agra, Uttar Pradesh, India", placeBuildingYear: 1631, placeBuilder: "Shah Cihan", imageName: "tacmahal", placeCoordinate: Coordinate(lat: 27.175163872071348, lon: 78.04215292674645))

let historicalPlacesArray = [ayasofya, topkapiPalace, ciraganPalace, dolmabahcePalace, tacMahal]
