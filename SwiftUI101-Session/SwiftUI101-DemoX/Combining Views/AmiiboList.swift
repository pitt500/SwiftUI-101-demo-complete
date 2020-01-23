//
//  AmiiboList.swift
//  SwiftUI101-DemoX
//
//  Created by projas on 1/18/20.
//  Copyright © 2020 pedrorojas.dev. All rights reserved.
//

import SwiftUI

struct AmiiboList: View {
  
  let amiibos = Amiibo.all()
  
  var body: some View {
    TabView {
      NavigationView {
        List(amiibos, id: \.name) { amiibo in
          NavigationLink(destination:
          AmiiboDetail(amiibo: amiibo)) {
            AmiiboCell(amiibo: amiibo)
          }
        }
        .navigationBarTitle("Amiibos")
      }
      .tabItem{
        Image(systemName: "1.square.fill")
        Text("First")
      }
      
      Text("Second Tab")
      .tabItem{
        Image(systemName: "2.square.fill")
        Text("Second")
      }
      
      Text("Third Tab")
      .tabItem{
        Image(systemName: "3.square.fill")
        Text("Third")
      }
    }
  }
}

struct AmiiboList_Previews: PreviewProvider {
  static var previews: some View {
    AmiiboList()
  }
}
