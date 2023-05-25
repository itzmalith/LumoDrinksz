//
//  CartButton.swift
//  LumoDrin
//
//  Created by Malith Lekamge on 2023-05-25.
//

import SwiftUI

struct CartButton: View {
    var numberOfItems:Int
    var body: some View {
        ZStack(alignment: .topTrailing){
            Image(systemName: "bag")
                .offset(x:-5)
                .padding(.top , 6)
                
                
            if numberOfItems > 0 {
                Text("\(numberOfItems)")
                    .font(.caption2).bold()
                    .foregroundColor(.white)
                    .frame(width: 15 ,height: 15)
                    
                    .background(Color(hue: 1.0, saturation: 0.943, brightness: 0.701))
                    .cornerRadius(50)
                
            }
            
        }
    }
}

struct CartButton_Previews: PreviewProvider {
    static var previews: some View {
        CartButton(numberOfItems: 5)
    }
}
