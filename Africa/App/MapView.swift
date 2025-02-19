//
//  MapView.swift
//  Africa
//
//  Created by Elexoft on 18/02/2025.
//

import SwiftUI
import MapKit

struct MapView: View {
    // MARK: - PROPERTIES
    
    @State private var region: MKCoordinateRegion = {
        var mapCoordinates = CLLocationCoordinate2D(latitude: 6.600286, longitude: 16.4377599)
        var mapZoomLevel = MKCoordinateSpan(latitudeDelta: 70.0, longitudeDelta: 70.0)
        var mapRegion = MKCoordinateRegion(center: mapCoordinates, span: mapZoomLevel)
        
        return mapRegion
    }()
    
    let locations: [NationalParkLocation] = Bundle.main.decode("locations.json")
    
    // MARK: - BODY
    
    var body: some View {
        // MARK: - NO1 BASIC MAP
        // Map(coordinateRegion: $region)
        
        // MARK: - NO2 ADVANCED MAP
        Map(coordinateRegion: $region, annotationItems: locations, annotationContent: { item in
            // (A) PIN: OLD STYLE (always static)
            // MapPin(coordinate: item.location, tint: .accentColor)
            
            // (B) Marker: NEW STYLE (always static)
            // MapMarker(coordinate: item.location, tint: .accentColor)
            
            // (C) CUSTOM BASIC ANNOTATION (it could be interactive)
            MapAnnotation(coordinate: item.location) {
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 32, height: 32, alignment: .center)
            } //: ANNOTATION
        })
    }
}

// MARK: - PREVIEW

#Preview {
    MapView()
}
