//
//  ArrowButton.swift
//  ZaraApp
//
//  Created by Temiloluwa on 05/01/2023.
//

import SwiftUI

struct ArrowButtton: View {
    
    var text: String
    var action = {}
    
    var body: some View {
        Button(action: action, label: {
            HStack {
                Image(systemName: "arrowtriangle.right.fill")
                    .font(.system(size: 10, weight: Font.Weight.light, design: Font.Design.default))
                    .foregroundColor(.text)
                
                Text(text).font(.system(size: 15, weight: Font.Weight.light, design: Font.Design.default))
                    .foregroundColor(.text)
            }
        })
    }
}

struct ArrowButtton_Previews: PreviewProvider {
    static var previews: some View {
        ArrowButtton(text: "COMPOSITION AND CARE")
    }
}
