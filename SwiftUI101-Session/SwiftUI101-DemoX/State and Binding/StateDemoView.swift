//
//  StateDemoView.swift
//  SwiftUI101-DemoX
//
//  Created by projas on 1/18/20.
//  Copyright © 2020 pedrorojas.dev. All rights reserved.
//

import SwiftUI

struct StateDemoView: View {
  
  @State private var lightsOut = false
  
  var body: some View {
    BindingDemoView(lightsOut: $lightsOut)
    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0,
           maxHeight: .infinity, alignment: .center)
    .background(lightsOut ?
      Color.black:
      Color.white)
  }
}

struct StateDemoView_Previews: PreviewProvider {
  static var previews: some View {
    StateDemoView()
  }
}
