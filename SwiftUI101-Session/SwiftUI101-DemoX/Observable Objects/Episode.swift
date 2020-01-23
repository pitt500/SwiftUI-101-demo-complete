//
//  Episode.swift
//  SwiftUI101-DemoX
//
//  Created by projas on 1/18/20.
//  Copyright © 2020 pedrorojas.dev. All rights reserved.
//

import Foundation

struct Episode {
  let title: String
}

extension Episode {
  static func all() -> [Episode] {
    [
      Episode(title: "To'hajiilee"),
      Episode(title: "Ozymandias"),
      Episode(title: "Granite State"),
      Episode(title: "Felina")
    ]
  }
}
