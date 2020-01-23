//
//  MainView.swift
//  SwiftUI101-DemoX
//
//  Created by projas on 1/18/20.
//  Copyright © 2020 pedrorojas.dev. All rights reserved.
//

import SwiftUI

struct MainView: View {
  @EnvironmentObject private var userSettings: UserSettings
  
  var body: some View {
    VStack {
      Text("You are logged")
        .font(.title)
        .padding()
      Button("Logout") {
        self.userSettings.isUserLogged = false
      }
    }
  }
}

struct MainView_Previews: PreviewProvider {
  static var previews: some View {
    MainView()
  }
}
