//
//  HeadingView.swift
//  Africa
//
//  Created by Elexoft on 19/02/2025.
//

import SwiftUI

struct HeadingView: View {
    // MARK: - PROPERTIES
    
    var headingImage: String
    var headingText: String
    
    // MARK: - BODY
    
    var body: some View {
        HStack {
            Image(systemName: headingImage)
                .foregroundColor(.accentColor)
                .imageScale(.large)
            
            Text(headingText)
                .font(.title3)
                .fontWeight(.bold)
        }
        .padding(.vertical)
    }
}

// MARK: - PREVIEW

#Preview {
    HeadingView(headingImage: "photo.on.rectangle.angled", headingText: "Wilderness in Pictures")
        .previewLayout(.sizeThatFits)
        .padding()
}
