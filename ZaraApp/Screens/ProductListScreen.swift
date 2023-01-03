//
//  ProductListScreen.swift
//  ZaraApp
//
//  Created by Temiloluwa on 03/01/2023.
//

import SwiftUI

struct ProductListScreen: View {
    
    @Binding var category: Category?
    
    @EnvironmentObject private var store: Store
    
    @State private var selectedProduct: Product?
    
    private let columns = [
        
        GridItem(.adaptive(minimum: 150), spacing: 20)
    
    ]
    
    var body: some View {
        
        return ZStack(alignment: .top) {
        
            ScrollView {
                
                createGrid()
            }.padding(.top, Sizes.navBarHeight)
                .padding(.horizontal, 15)
            
            createNavBar()
            
        }.onAppear(perform: {
            
           setProducts()
        })
    }
    
    fileprivate func createGrid() -> LazyVGrid<ForEach<[Product], String, ProductItemView>> {
        
        LazyVGrid(columns: columns, alignment: .center, spacing: 40) {
            ForEach(store.state.products) { product in
                
                createProductItemView(product)
            }
        }
    }
    
    fileprivate func createNavBar() -> NavBar {
        
        return NavBar(title: "NEW IN ") {
            
            category = nil
            
        } onFilter: {
            
            
        }
    }
    
    fileprivate func setProducts() {
        
        guard let cat = self.category else { return }
        
        switch cat {
            
        case.men:
            store.dispatch(.addProducts(Product.men))
        case.women:
            store.dispatch(.addProducts(Product.women))
        case.kids:
            store.dispatch(.addProducts(Product.kids))
        }
    }
    
    fileprivate func createProductItemView(_ product: Product) -> ProductItemView {
        
        return ProductItemView(product: product) {
            
            selectedProduct = product
            
        } bookmark: {
            
            store.dispatch(.bookmark(product))
        }
    }
}

struct ProductListScreen_Previews: PreviewProvider {
    static var previews: some View {
        ProductListScreen(category: .constant(Category.kids)).environmentObject(Store())
    }
}
