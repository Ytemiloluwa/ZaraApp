//
//  TabIndicator.swift
//  ZaraApp
//
//  Created by Temiloluwa on 03/01/2023.
//

import SwiftUI

struct TabIndicator: View {
    
    var category: Category
    
    var body: some View {
        
        HStack {
            
            ForEach(0..<Category.allCases.count) { i in
                
                TabIndicatorItem(category: Category.allCases[i], isActive: Category.allCases[i] == category)
            }
        }.frame(width: 250)
    }
}

struct TabIndicator_Previews: PreviewProvider {
    static var previews: some View {
        TabIndicator(category: Category.men)
    }
}
