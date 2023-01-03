//
//  TabBarView.swift
//  ZaraApp
//
//  Created by Temiloluwa on 03/01/2023.
//

import SwiftUI

struct TabBarView: View {
    
    @Binding var tab: Tab?
    
    var body: some View {
        
        HStack {
            
            Button(action: {
                
                onSelected(.search)
            }, label: {
                
                Image(systemName: "magnifyingglass")
                    .thinFont()
                    .frame(maxWidth: .infinity)
            })
            
            Button(action: {
                
                onSelected(.bookmark)
            }, label: {
                
                Image(systemName: "bookmark")
                    .thinFont()
                    .frame(maxWidth: .infinity)
            })
            
            Button(action: {
                
                onSelected(.menu)
            }, label: {
                
                Text("MENU")
                    .thinFont()
                    .frame(maxWidth: .infinity)
            })
            
            Button(action: {
                
                onSelected(.profile)
            }, label: {
                
                Image(systemName: "person")
                    .thinFont()
                    .frame(maxWidth: .infinity)
            })
            
            Button(action: {
                
                onSelected(.cart)
                
            }, label: {
                
                Image(systemName: "bag")
                    .thinFont()
                    .overlay(
                        Text("9+").font(.system(size: 7, weight: Font.Weight.light, design: Font.Design.default))
                            .padding(.top, 2), alignment: .center)
                    .frame(maxWidth: .infinity)
            })
            
        }.frame(maxWidth: .infinity, maxHeight: Sizes.tabHeight, alignment: .top)
            .textColor()
            .bgColor()

    }
    
    func onSelected(_ tab: Tab) {
        
        self.tab = tab
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView(tab: .constant(.bookmark))
    }
}
