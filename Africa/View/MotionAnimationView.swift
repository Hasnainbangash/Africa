//
//  MotionAnimationView.swift
//  Africa
//
//  Created by Elexoft on 19/02/2025.
//

import SwiftUI

struct MotionAnimationView: View {
    // MARK: - PROPERTIES
    
    @State private var randomCircle = Int.random(in: 12...16)
    
    // MARK: - FUNCTIONS
    
    // 1. RANDOM COORDINATE
    // 2. RANDOM SIZE
    // 3. RANDOM SCALE
    // 4. RANDOM SPEED
    // 5. RANDOM DELAY
    
    // MARK: - BODY
    
    var body: some View {
        // With this geometry reader container we can measure not only the screen size but any view size, Basically it gives us access to the size and position of the parent view. One important thing we should keep in mind that when we wrap any view into a geometry reader container than the origin point will be changed from the center to top left
        GeometryReader {geometry in
            ZStack {
                ForEach(0...randomCircle, id: \.self) { item in
                    Circle()
                        .foregroundColor(.gray)
                        .opacity(0.15)
                        .frame(width: 256, height: 256, alignment: .center)
                        .position(
                            x: geometry.size.width / 2,
                            y: geometry.size.height / 2
                        )
                } //: LOOP
                
                Text("Width: \(Int(geometry.size.width)) Height: \(Int(geometry.size.height))")
            } //: ZSTACK
        } //: Geometry
    }
}

// MARK: - PREVIEW

#Preview {
    MotionAnimationView()
}
