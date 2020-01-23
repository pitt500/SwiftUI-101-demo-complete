//
//  BindingDemoView.swift
//  SwiftUI101-DemoX
//
//  Created by projas on 1/18/20.
//  Copyright © 2020 pedrorojas.dev. All rights reserved.
//

import SwiftUI

struct BindingDemoView: View {
  @Binding var lightsOut: Bool
  
  var body: some View {
    VStack {
      Text( lightsOut ? "🌙" :  "☀️")
        .font(.custom("Arial", size: 100))
      Toggle(isOn: $lightsOut) {
        Text( lightsOut ? "Night" : "Day")
          .font(.title)
          .foregroundColor( lightsOut ?
            Color.white : Color.black)
      }.fixedSize()
    }
  }
}

struct BindingDemoView_Previews: PreviewProvider {
  static var previews: some View {
    BindingDemoView(lightsOut: .constant(true))
  }
}
