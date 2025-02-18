//
//  MainView.swift
//  Africa
//
//  Created by Elexoft on 18/02/2025.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            ContentView()
                .tabItem {
                    Image(systemName: "square.grid.2x2")
                    Text("Browse")
                }
        } //: TAB
    }
}

#Preview {
    MainView()
}
