//
//  ContentView.swift
//  Landmarks
//
//  Created by Hakan Sait Bozkurt on 7.01.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Turtle Rock")
                .font(.title)
            
            HStack {
                Text("Joshua Tree National Park")
                    .font(.subheadline)
                
                Spacer()
                
                Text("California")
                    .font(.subheadline)
            }
        }
            .padding()
    }
}

#Preview {
    ContentView()
}
