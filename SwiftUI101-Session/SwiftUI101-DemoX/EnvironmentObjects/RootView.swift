//
//  RootView.swift
//  SwiftUI101-DemoX
//
//  Created by projas on 1/18/20.
//  Copyright © 2020 pedrorojas.dev. All rights reserved.
//

import SwiftUI

struct RootView: View {
  
  @EnvironmentObject private var userSettings: UserSettings
  
  var body: some View {
    Group {
      if self.userSettings.isUserLogged {
        MainView()
      } else {
        LoginView()
      }
    }
  }
}

struct RootView_Previews: PreviewProvider {
  static var previews: some View {
    RootView()
  }
}
