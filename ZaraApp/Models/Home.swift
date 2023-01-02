//
//  Home.swift
//  ZaraApp
//
//  Created by Temiloluwa on 02/01/2023.
//

import Foundation
struct Home: Identifiable, Hashable {
    
    var id: Category
    var pages: [Page]
    
    static func ==(lhs: Home, rhs: Home) -> Bool {
        
        lhs.id == rhs.id
    }
    
    static var data: [Home] {
        
        
       [
        Home(id: Category.men, pages: [
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
            ]),
        Home(id: Category.women, pages: [
                Page(
                     title: "NEW IN",
                     description: "Explore this week's latest womenswear pieces of the season curated for you. Autumn Winter Woman Collection"),
                
                Page(
                     title: "COLLECTION",
                     description: "Discover this week's latest pieces from our latest collection. Autumn Winter Woman Collection"),
                
                Page(
                     title: "SHOES & BAGS",
                     description: "Explore the new collection of Shoes and Bags. Autumn Winter Woman Collection"),
                
                Page(
                     title: "UP TO 50% OFF",
                     description: "ONLINE AND IN STORES"),
                
                Page(
                     title: "CLOTHING CARE",
                     description: "As part of our environment commitmnet, we have developed a guide to help reduce the impact of care process. #joinlife")
            ]),
        Home(id: Category.kids, pages: [
                Page(
                     title: "NEW IN",
                     description: "Explore this week's latest kidswear pieces of the season curated for you. Autumn Winter Kids Collection"),
                
                Page(
                     title: "COLLECTION",
                     description: "Discover this week's latest pieces from our latest collection. Autumn Winter Kids Collection"),
                
                Page(
                     title: "SHOES & BAGS",
                     description: "Explore the new collection of Shoes and Bags. Autumn Winter Kids Collection"),
                
                Page(
                     title: "SALE",
                     description: "ONLINE AND IN STORES"),
                
                Page(
                     title: "CLOTHING CARE",
                     description: "As part of our environment commitmnet, we have developed a guide to help reduce the impact of care process. #joinlife")
            ])
       ]
    }
}
