//
//  ContentView.swift
//  ZaraApp
//
//  Created by Temiloluwa on 01/01/2023.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject private var store: Store
    @State private var presentScreen = false
    @State private var selectedTab: Tab?
    @State private var selectedCategory: Category?
    
    
    var body: some View {
       
        if store.state.isLogggedIn {
            
            CreateHomeScreen()
            
        } else {
            
            createLoginScreen()
        }
    }
    
    fileprivate func createLoginScreen() -> some View {
        
        return LoginScreen {
            
            
        }.transition(.move(edge: .bottom))
            .animation(.easeOut)
    }
    
    fileprivate func CreateHomeScreen() -> some View {
        
        return ZStack(alignment: .bottom) {
            
            HomeScreen(category: $selectedCategory)
            TabBarView(tab: $selectedTab)
        }.fullScreenCover(isPresented: $presentScreen, content: {
            
            if selectedCategory != nil {
                
                ProductListScreen(category: $selectedCategory)
            }
            
            if let tab = selectedTab {
                
                createTabScreen(tab)
                
            }
        }).onChange(of: selectedCategory) { category in
            
            presentScreen.toggle()
        }.onChange(of: selectedTab) { newValue in
            
            presentScreen.toggle()
        }
    }
    
    @ViewBuilder
    private func createTabScreen(_ tab: Tab) -> some View {
        
        switch tab {
            
        case.bookmark:
            Text("Bookmark")
            
        case.cart:
            Text("shopping bar")
            
        case.search:
            Text("Search")
        
        case.profile:
            
            Text("profile")
            
        case.menu:
            Text("Menu")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(Store())
    }
}
