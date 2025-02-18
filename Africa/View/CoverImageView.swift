//
//  CoverImageView.swift
//  Africa
//
//  Created by Elexoft on 18/02/2025.
//

import SwiftUI

struct CoverImageView: View {
    // MARK: - PROPERTIES
    
    let coverImages: [CoverImage] = Bundle.main.decode("covers.json")
    
    // MARK: - BODY
    var body: some View {
        TabView {
            ForEach(coverImages) { item in
                Image(item.name)
                    .resizable()
                    .scaledToFit()
            } //: LOOP
        } //: TAB
        .tabViewStyle(.page)
    }
}

// MARK: - PREVIEW

#Preview {
    CoverImageView()
        .previewLayout(.fixed(width: 400, height: 300))
}
