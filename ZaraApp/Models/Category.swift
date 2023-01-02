//
//  Category.swift
//  ZaraApp
//
//  Created by Temiloluwa on 02/01/2023.
//

import Foundation

enum Category: Int, CaseIterable {
    
    
    case men = 0
    case women = 1
    case kids = 2
    
    private var cases: [String] {
        
        ["Men", "Women", "Kids"]
    }
    
    func toString() -> String {
        
        cases[self.rawValue]
    }
}
