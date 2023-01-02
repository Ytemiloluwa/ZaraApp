//
//  Store.swift
//  ZaraApp
//
//  Created by Temiloluwa on 02/01/2023.
//

import Foundation


class Store: ObservableObject {
    
    
    struct state {
        
        var products: [Product]
        var bookmarked: [Product]
        var shoppingCart: [Product]
        var isLogggedIn: Bool = false
    }
    
    enum Action {
        
        case addProducts(_ product: [Product])
        case bookmark(_ product: Product)
        case removeFromBookmark(_ index: Int)
        case addToCart(_ product: Product)
        case login
    }
}
