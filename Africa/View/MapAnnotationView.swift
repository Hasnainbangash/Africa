//
//  MapAnnotationView.swift
//  Africa
//
//  Created by Elexoft on 19/02/2025.
//

import SwiftUI

struct MapAnnotationView: View {
    // MARK: - PROPERTIES
    
    var location: NationalParkLocation
    
    // MARK: - BODY
    
    var body: some View {
        Image(location.image)
            .resizable()
            .scaledToFit()
            .frame(width: 48, height: 48, alignment: .center)
            .clipShape(Circle())
    }
}


// MARK: - PREVIEW

#Preview {
    let locations: [NationalParkLocation] = Bundle.main.decode("locations.json")
    MapAnnotationView(location: locations[0])
        .previewLayout(.sizeThatFits)
        .padding()
}
