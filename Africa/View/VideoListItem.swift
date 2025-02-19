//
//  VideoListItem.swift
//  Africa
//
//  Created by Elexoft on 19/02/2025.
//

import SwiftUI

struct VideoListItem: View {
    // MARK: - PROPERTIES
    
    let video: Video
    
    // MARK: - BODY
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

// MARK: - PREVIEW

#Preview {
    let videos: [Video] = Bundle.main.decode("videos.json")
    VideoListItem(video: videos[0])
        .previewLayout(.sizeThatFits)
        .padding()
}
