//
//  VideoPlayerView.swift
//  Africa
//
//  Created by Elexoft on 19/02/2025.
//

import SwiftUI
import AVKit

struct VideoPlayerView: View {
    // MARK: - PROPERTIES
    
    // MARK: - BODY
    
    var body: some View {
        VideoPlayer(player: AVPlayer(url: Bundle.main.url(forResource: "cheetah", withExtension: "mp4")!))
    }
}

// MARK: - PREVIEW

#Preview {
    VideoPlayerView()
}
