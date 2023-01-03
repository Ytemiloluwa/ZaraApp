//
//  HomeScreen.swift
//  ZaraApp
//
//  Created by Temiloluwa on 03/01/2023.
//

import SwiftUI

struct HomeScreen: View {
    
    @Binding var category: Category?
    private let data = Home.data
    @State private var selected = Home.data.first!
    @EnvironmentObject private var store: Store
    
    var body: some View {
        

        ZStack(alignment: .top) {
            TabView(selection: self.$selected.id) {

                ForEach(data) { item  in
                    
                    createPageController(item)
                        .frame(height: Sizes.screenHeight)
                        .tag(item.id)
                        .onTapGesture(count: 1, perform: { category = item.id })
                    
                }
            }.background(Color.background)
                .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            
            TabIndicator(category: selected.id)
                .padding(.top, 50)
        }
    }
    
    fileprivate func createPageController(_ data: Home) -> PageController<PageView>{
        
        return PageController(viewControllers: data.pages.map({
            
            UIHostingController(rootView: PageView(page: $0))
        }), selectedIndex: .constant(nil))
        
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen(category: .constant(Category.kids))
    }
}
