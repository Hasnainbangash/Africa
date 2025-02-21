//
//  CenterModifier.swift
//  Africa
//
//  Created by Elexoft on 21/02/2025.
//

import SwiftUI

struct CenterModifier: ViewModifier {
    func body(content: Content) ->  some View {
        HStack {
            Spacer()
            content
            Spacer()
        }
    }
}
