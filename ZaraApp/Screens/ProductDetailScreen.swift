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
    
    private let foldedHeight: CGFloat = 300
    private let expandedHeight = Sizes.screenHeight - UIScreen.main.bounds.height * 0.22
    var body: some View {
        
        ZStack(alignment: .top) {
            
            createPagingController()
            
            if selectedIndex == nil {
                createCustomSheet()
            } else {
                createProductImageView()
            }
            
            createNavBarView()
        }.edgesIgnoringSafeArea(.all)
            .animation(.linear, value: selectedIndex)
    }
    
    fileprivate func createCustomSheet() -> some View {
        
        CustomSheet(progress: self.$progress, foldedHeight: foldedHeight, expandedHeight: expandedHeight) {
            
            ProductDetailContent(product: product)
        }
    }
    
    fileprivate func createProductImageView() -> ProductImageView {
        let images = product.images
        return ProductImageView(imageUrl: images[selectedIndex!], animation: animation) {
            
            
            self.selectedIndex = nil
            
        }
    }
    
    fileprivate func createPagingController() -> some View {
        PageController(viewControllers:
                        product.images.map({
            UIHostingController(rootView:
                                    ImagePageView(image: $0)
                .matchedGeometryEffect(id: $0, in: animation)
            )}), selectedIndex: self.$selectedIndex)
    }
    
    fileprivate func createNavBarView() -> some View {
        ClearNavBar(opacity: Double(1 - progress), onDismiss: onDismiss)
            .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
    }
    
    
}

struct ProductDetailScreen_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailScreen(product: Product.kids.first!)
    }
}
