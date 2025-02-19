//
//  AnimalDetailView.swift
//  Africa
//
//  Created by Elexoft on 19/02/2025.
//

import SwiftUI

struct AnimalDetailView: View {
    // MARK: - PROPERTIES
    
    let animal: Animal
    
    // MARK: - BODY
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 20) {
                // HERO IMAGE
                
                // TITLE
                
                // HEADLINE
                
                // GALLERY
                
                // FACTS
                
                // DESCRIPTION
                
                // MAP
                
                // LINK
                
            } //: VSTACK
            .navigationBarTitle("Learn about \(animal.name)", displayMode: .inline)
        } //: SCROLL
    }
}

// MARK: - PREVIEW

#Preview {
    let animals: [Animal] = Bundle.main.decode("animals.json")
    NavigationView {
        AnimalDetailView(animal: animals[0])
    }
}
