//
//  GalleryView.swift
//  Africa
//
//  Created by Elexoft on 18/02/2025.
//

import SwiftUI

struct GalleryView: View {
    // MARK: - PROPERTIES
    
    // SIMPLE GRID DEFINATION
    let gridLayout: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    // MARK: - BODY
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            // MARK: - GRID
            
            LazyVGrid(columns: gridLayout, alignment: .center, spacing: 10) {
                Text("Gallery")
            } //: GRID
        } //: SCROLL
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(MotionAnimationView())
    }
}

// MARK: - PREVIEW

#Preview {
    GalleryView()
}
