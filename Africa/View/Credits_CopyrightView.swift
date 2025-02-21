//
//  Credits_CopyrightView.swift
//  Africa
//
//  Created by Elexoft on 21/02/2025.
//

import SwiftUI

struct Credits_CopyrightView: View {
    var body: some View {
        VStack {
            Image("compass")
                .resizable()
                .scaledToFit()
                .frame(width: 128, height: 128)
            
            Text("""
            Copyright © Robert Petras
            All right reserved
            Better Apps ♡ Less Code
            """)
            .font(.footnote)
            .multilineTextAlignment(.center)
        } //: VSTACK
        .padding()
        .opacity(0.4)
    }
}

#Preview {
    Credits_CopyrightView()
        .previewLayout(.sizeThatFits)
        .padding()
}
