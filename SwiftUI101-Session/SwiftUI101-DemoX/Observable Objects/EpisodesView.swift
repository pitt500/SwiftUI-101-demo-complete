//
//  EpisodesView.swift
//  SwiftUI101-DemoX
//
//  Created by projas on 1/18/20.
//  Copyright © 2020 pedrorojas.dev. All rights reserved.
//

import SwiftUI

struct EpisodesView: View {
  @ObservedObject var player: VideoPlayer
  @State private var currentPage = 0
  let episodes: [Episode]
  
  var body: some View {
    VStack {
      //PagerView is a custom view
      PagerView(pageCount: episodes.count,
                currentIndex: $currentPage) {
                  ForEach(episodes, id: \.title) { episode in
                    EpisodeView(episode: episode)
                  }
                  
      }.frame(height: 400)
      Button(
        action: {
          if self.player.isPlaying {
            self.player.pause()
          } else {
            self.player.play()
          }
      }, label: {
        Text(player.isPlaying ? "⏸": "▶️")
          .font(.custom("Arial", size: 60))
      })
    }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0,
            maxHeight: .infinity, alignment: .center)
      .background(Color.black.edgesIgnoringSafeArea(.all))
    
  }
}

struct EpisodesView_Previews: PreviewProvider {
  static var previews: some View {
    EpisodesView(player: VideoPlayer(), episodes: Episode.all())
  }
}
