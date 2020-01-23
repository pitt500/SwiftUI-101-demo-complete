//
//  Amiibo.swift
//  SwiftUI101-DemoX
//
//  Created by projas on 1/18/20.
//  Copyright © 2020 pedrorojas.dev. All rights reserved.
//

import UIKit

struct Amiibo {
  let name: String
  let gameSeries: String
  let imageUrl: String
}

extension Amiibo {
  static func all() -> [Amiibo] {
    return [
      Amiibo(name: "Link", gameSeries: "Zelda", imageUrl: "Link"),
      Amiibo(name: "Waluigi", gameSeries: "Super Mario", imageUrl: "Waluigi"),
      Amiibo(name: "Ryu", gameSeries: "Street Fighter", imageUrl: "Ryu"),
      Amiibo(name: "Samus", gameSeries: "Metroid", imageUrl: "Samus"),
      Amiibo(name: "Yoshi", gameSeries: "Super Mario", imageUrl: "Yoshi")
    ]
  }
}
