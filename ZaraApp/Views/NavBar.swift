//
//  NavBar.swift
//  ZaraApp
//
//  Created by Temiloluwa on 03/01/2023.
//

import SwiftUI

struct NavBar: View {
    var title: String
    var onReturn = {}
    var onFilter = {}
    var body: some View {
        
        HStack {
            
            Button(action: onReturn, label: {
                Image(systemName: "arrow.left")
                    .thinFont()
            }).frame(width: 40, alignment: .leading)
            
            Text(title)
                .font(.system(size: 18, weight: Font.Weight.bold, design: Font.Design.default))
                .frame(maxWidth: .infinity, alignment: .center)
            
            Button(action: onFilter , label: {
                
                Text("FILTERS")
                    .lightFont()
            })
        }.padding(.horizontal)
            .padding(.bottom, 10)
            .textColor()
            .frame(height: Sizes.navBarHeight, alignment: .bottom)
            .bgColor()
    }
}

struct NavBar_Previews: PreviewProvider {
    static var previews: some View {
        NavBar(title: "NEW IN")
    }
}
