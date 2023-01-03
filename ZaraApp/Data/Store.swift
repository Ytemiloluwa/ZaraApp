//
//  Store.swift
//  ZaraApp
//
//  Created by Temiloluwa on 02/01/2023.
//

import Foundation


class Store: ObservableObject {
    
    
    struct State {
        
        var products: [Product]
        var bookmarked: [Product]
        var shoppingCart: [Product]
        var isLogggedIn: Bool = true
    }
    
    enum Action {
        
        case addProducts(_ product: [Product])
        case bookmark(_ product: Product)
        case removeFromBookmark(_ index: Int)
        case addToCart(_ product: Product)
        case login
    }
    
    @Published private(set) var state: State = .init(products: [], bookmarked: [], shoppingCart: [])
    
    func dispatch(_ action: Action) {
        
        reducer(state: &state, action: action)
    }
    
    
    func reducer(state: inout State, action: Action) {
        
        switch action {
            
        case .bookmark(let product):
            state.bookmarked.append(product)
            
        case.addToCart(let product):
            state.shoppingCart.append(product)
            
        case.removeFromBookmark(let index):
            state.bookmarked.remove(at: index)
            
        case.addProducts(let products):
            state.products = products
            
        case .login:
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.3) { [weak self] in
                
                self?.state.isLogggedIn = true
            }
            
        }
    }
}
