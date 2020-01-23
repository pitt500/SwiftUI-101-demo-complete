//
//  AmiiboCell.swift
//  SwiftUI101-DemoX
//
//  Created by projas on 1/18/20.
//  Copyright © 2020 pedrorojas.dev. All rights reserved.
//

import SwiftUI

struct AmiiboCell: View {
  
  let amiibo: Amiibo
  
  var body: some View {
    HStack {
      Image(amiibo.imageUrl)
        .resizable()
        .scaledToFit()
        .frame(width: 120, height: 140)
      VStack(alignment: .leading) {
        Text(amiibo.name)
          .font(.title)
        Text(amiibo.gameSeries)
          .font(.caption)
      }
      Spacer()
    }
  }
}

struct AmiiboCell_Previews: PreviewProvider {
  static var previews: some View {
    AmiiboCell(amiibo: Amiibo.all()[3])
      
      .previewLayout(.fixed(width: 350, height: 150))
  }
}
