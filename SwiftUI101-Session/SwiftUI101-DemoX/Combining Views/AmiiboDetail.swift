//
//  AmiiboDetail.swift
//  SwiftUI101-DemoX
//
//  Created by projas on 1/18/20.
//  Copyright © 2020 pedrorojas.dev. All rights reserved.
//

import SwiftUI

struct AmiiboDetail: View {
  
  let amiibo: Amiibo
  
  var body: some View {
    VStack {
      Image(amiibo.imageUrl)
        .resizable()
        .scaledToFit()
      Text(amiibo.name)
        .font(.largeTitle)
      Text(amiibo.gameSeries)
        .font(.caption)
    }
    .navigationBarTitle("\(amiibo.name)", displayMode: .inline)
  }
}

struct AmiiboDetail_Previews: PreviewProvider {
  static var previews: some View {
    AmiiboDetail(amiibo: Amiibo.all().first!)
  }
}
