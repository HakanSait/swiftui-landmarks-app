//
//  Landmark.swift
//  Landmarks
//
//  Created by Hakan Sait Bozkurt on 23.01.2024.
//

import Foundation
import SwiftUI
import CoreLocation


struct Landmark: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String


    private var imageName: String
    var image: Image {
        Image(imageName)
    }
    
    
    private var coordinates: Coordinates
    var locationCordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude
        )
    }
    
    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
}
