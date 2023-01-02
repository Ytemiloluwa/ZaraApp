//
//  Page.swift
//  ZaraApp
//
//  Created by Temiloluwa on 02/01/2023.
//

import Foundation

struct Page: Identifiable, Hashable {
    
    
    var id = UUID().uuidString
    var title: String
    var description: String
    
    
    static var `default`: Page {
        
        
        Page(title: "NEW IN", description: "Explore this week's latest menswear pieces of the season curated for you. Autumn Winter Man Collection")
    }
    
    static var data: [Page] {
        
        [
           Page(
                title: "NEW IN",
                description: "Explore this week's latest menswear pieces of the season curated for you. Autumn Winter Man Collection"),
           Page(
                title: "COLLECTION",
                description: "Discover this week's latest pieces from our latest collection. Autumn Winter Man Collection"),
           Page(
                title: "SHOES & BAGS",
                description: "Explore the new collection of Shoes and Bags. Autumn Winter Man Collection"),
           Page(
                title: "SALE",
                description: "ONLINE AND IN STORES"),
           Page(
                title: "CLOTHING CARE",
                description: "As part of our environment commitmnet, we have developed a guide to help reduce the impact of care process. #joinlife")
       ]
        
    }
}
