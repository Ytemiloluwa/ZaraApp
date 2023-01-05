//
//  PodcastDetailScreen.swift
//  ZaraApp
//
//  Created by Temiloluwa on 05/01/2023.
//

import SwiftUI
import Kingfisher

struct ProductDetailScreen: View {
    
    var product: Product
    var onDismiss = {}
    
    @State private var progress: CGFloat = 1
    @State private var selectedIndex: Int?
    
    @Namespace private var animation
    
    private let foldedHeight: CGFloat = 150
    private let expandedHeight = Sizes.screenHeight - UIScreen.main.bounds.height * 0.22
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
    
    fileprivate func createCustomSheet() -> some View {
        
        CustomSheet(progress: self.$progress, foldedHeight: foldedHeight, expandedHeight: expandedHeight) {
            
           ProductDetailContent(product: product)
        }
    }
}

struct ProductDetailScreen_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailScreen(product: Product.kids.first!)
    }
}
