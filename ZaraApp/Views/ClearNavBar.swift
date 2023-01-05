//
//  ClearNavBar.swift
//  ZaraApp
//
//  Created by Temiloluwa on 05/01/2023.
//

import SwiftUI

struct ClearNavBar: View {
    var opacity: Double
    var onDismiss = {}
    var body: some View {
        
        HStack {
            
            Button(action: onDismiss, label: {
                
                Image(systemName: "xmark")
                    .font(.system(size: 25, weight: Font.Weight.light, design: Font.Design.default))
                    .foregroundColor(.gray)
                    .padding(10)
                
            })
            
            Spacer()
            
            
        }.padding(.horizontal, 20)
    }
}

struct ClearNavBar_Previews: PreviewProvider {
    static var previews: some View {
        ClearNavBar(opacity: 1)
    }
}
