//
//  MapView.swift
//  Landmarks
//
//  Created by Hakan Sait Bozkurt on 8.01.2024.
//

import SwiftUI
import MapKit


struct MapView: View {
    var body: some View {
		Map(position: .constant(.region(region)))
    }


	var cordinate: CLLocationCoordinate2D
    private var region: MKCoordinateRegion {
        MKCoordinateRegion(
            center: cordinate,
            span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        )
    }
}


#Preview {
	MapView(cordinate: landmarks[0].locationCordinate)
}
