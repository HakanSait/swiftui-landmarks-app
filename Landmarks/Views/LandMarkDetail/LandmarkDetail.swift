//
//  LandmarkDetail.swift
//  Landmarks
//
//  Created by Hakan Sait Bozkurt on 25.01.2024.
//

import SwiftUI

struct LandmarkDetail: View {
	var landmark: Landmark
	
    var body: some View {
		ScrollView {
			VStack {
				MapView(cordinate: landmark.locationCordinate)
					.frame(height: 300)
				
				CircleImage(image: landmark.image)
					.offset(y: -130)
					.padding(.bottom, -130)
				
				VStack(alignment: .leading) {
					Text(landmark.name)
						.font(.title)
					
					HStack {
						Text(landmark.park)
						
						Spacer()
						
						Text(landmark.state)
					}
					.font(.subheadline)
					.foregroundStyle(.secondary)
					
					Divider()
					
					Text("About \(landmark.name)")
						.font(.title2)
					
					Text(landmark.description)
				}
				.padding()
				
				Spacer()
			}
		}
    }
}

#Preview {
	LandmarkDetail(landmark: landmarks[4])
}
