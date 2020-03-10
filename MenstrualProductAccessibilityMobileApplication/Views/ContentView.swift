//
//  ContentView.swift
//  MenstrualProductAccessibilityMobileApplication
//
//  Created by Ed Nava on 3/10/20.
//  Copyright © 2020 cs4675. All rights reserved.
//

import MapKit
import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            MapView(centerCoordinate: $centerCoordinate)
                .edgesIgnoringSafeArea(.all)
            Circle()
                .fill(Color.blue)
                .opacity(0.3)
                .frame(width: 32, height: 32)
            VStack {
                Spacer()
                HStack {
                    Spacer()
                    Button(action: {
                        // create a new location
                    }) {
                        Image(systemName: "plus")
                    }
                    .padding()
                    .background(Color.black.opacity(0.75))
                    .foregroundColor(.white)
                    .font(.title)
                    .clipShape(Circle())
                    .padding(.trailing)
                }
            }
        }
    }
    
    /**
     * We want to store some state in this view
     */
    @State private var centerCoordinate = CLLocationCoordinate2D()
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
