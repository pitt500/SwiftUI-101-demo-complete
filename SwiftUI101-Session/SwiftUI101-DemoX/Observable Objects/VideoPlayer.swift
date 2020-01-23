//
//  VideoPlayer.swift
//  SwiftUI101-DemoX
//
//  Created by projas on 1/18/20.
//  Copyright © 2020 pedrorojas.dev. All rights reserved.
//

import Combine

class VideoPlayer: ObservableObject {
  @Published private(set) var isPlaying = false
  
  func play() {
    isPlaying = true
  }
  
  func pause() {
    isPlaying = false
  }
}

