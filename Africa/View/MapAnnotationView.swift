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
    @State private var animation: Double = 0.0
    
    // MARK: - BODY
    
    var body: some View {
        ZStack {
            Circle()
                .fill(Color.accentColor)
                .frame(width: 54, height: 54)
            
            Circle()
                .stroke(Color.accentColor, lineWidth: 2)
                .frame(width: 52, height: 52)
                .scaleEffect(1 + CGFloat(animation))
                .opacity(1 - animation)
            
            Image(location.image)
                .resizable()
                .scaledToFit()
                .frame(width: 48, height: 48, alignment: .center)
                .clipShape(Circle())
        } //: ZSTACK
        .onAppear {
            withAnimation(.easeOut(duration: 2).repeatForever(autoreverses: false)) {
                animation = 1
            }
        }
    }
}


// MARK: - PREVIEW

#Preview {
    let locations: [NationalParkLocation] = Bundle.main.decode("locations.json")
    MapAnnotationView(location: locations[0])
        .previewLayout(.sizeThatFits)
        .padding()
}
