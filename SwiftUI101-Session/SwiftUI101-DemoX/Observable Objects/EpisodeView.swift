//
//  EpisodePlayer.swift
//  SwiftUI101-DemoX
//
//  Created by projas on 1/18/20.
//  Copyright © 2020 pedrorojas.dev. All rights reserved.
//

import SwiftUI

struct EpisodeView: View {
  let episode: Episode
  
  var body: some View {
    VStack {
      Text(episode.title)
        .font(.largeTitle)
        .foregroundColor(Color.white)
      Image(episode.title)
        .resizable()
        .scaledToFill()
        .frame(width: 300, height: 300)
        .clipped()
        .cornerRadius(10)
    }
    .padding(20)
    .background(Color.black.edgesIgnoringSafeArea(.all))
  }
}

struct EpisodePlayer_Previews: PreviewProvider {
  static var previews: some View {
    EpisodeView(episode: Episode.all().first!)
      .previewLayout(.fixed(width: 340, height: 400))
  }
}
