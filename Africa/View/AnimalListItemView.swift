//
//  AnimalListItemView.swift
//  Africa
//
//  Created by Elexoft on 18/02/2025.
//

import SwiftUI

struct AnimalListItemView: View {
    // MARK: - PROPERTIES
    
    // MARK: - BODY
    var body: some View {
        HStack(alignment: .center, spacing: 16) {
            Image("lion")
                .resizable()
                .scaledToFill()
                .frame(width: 90, height: 90)
                .clipShape(
                    RoundedRectangle(cornerRadius: 12)
                )
            
            Text("Hello, World!")
        }
    }
}

// MARK: - PREVIEW

#Preview {
    AnimalListItemView()
        .previewLayout(.sizeThatFits)
        .padding()
}
