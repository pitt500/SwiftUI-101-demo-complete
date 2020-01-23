//
//  LoginView.swift
//  SwiftUI101-DemoX
//
//  Created by projas on 1/18/20.
//  Copyright © 2020 pedrorojas.dev. All rights reserved.
//

import SwiftUI

struct LoginView: View {
  @State private var username = ""
  @State private var password = ""
  
  @EnvironmentObject private var userSettings: UserSettings
  
  var body: some View {
    VStack {
      VStack {
        TextField("Username", text: $username)
        Divider()
      }
      .padding(EdgeInsets(top: 4, leading: 10, bottom: 4, trailing: 10) )
      
      VStack {
        SecureField("Password", text: $password)
        Divider()
      }.padding(EdgeInsets(top: 4, leading: 10, bottom: 4, trailing: 10) )
      
      Button("Login") {
        self.userSettings.isUserLogged = true
      }
    }
  }
}

struct LoginView_Previews: PreviewProvider {
  static var previews: some View {
    LoginView()
  }
}
