//
//  CollectionViewCell.swift
//  DrillsApp
//
//  Created by Thomas James Stuart on 7/18/20.
//  Copyright © 2020 Thomas James Stuart. All rights reserved.
//

import SwiftUI

struct CollectionViewCell: View {
      var index = 0
         init(row : Int , column : Int) {
             index =  row+column+(row*2)
         }
      var body: some View {
         
          ZStack{
              
              RoundedRectangle(cornerRadius: 10)
                  .fill(color.lightGreen)
                  .frame(width: cell.width, height: cell.width)
              Text("\(self.index)").foregroundColor(.white).font(.largeTitle)
              
          }.onTapGesture {
                  print("\(self.index)")
          }
        
      }
}

struct CollectionViewCell_Previews: PreviewProvider {
    static var previews: some View {
        CollectionViewCell(row: 0, column: 1)
    }
}
