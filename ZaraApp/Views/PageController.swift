//
//  PageController.swift
//  ZaraApp
//
//  Created by Temiloluwa on 03/01/2023.
//

import SwiftUI

struct PageController<T: View>: View {
    
    var viewControllers: [UIHostingController<T>] = []
    @State var currentPage = 0
    @Binding var selectedIndex: Int?
    
    var body: some View {
      
        return ZStack(alignment: .trailing) {
            
            CollectionView(controller: viewControllers, currentPage: self.$currentPage, selectedIndex: self.$selectedIndex)
            
            VerticalPageIndicator(numberOfPages: viewControllers.count, selectedPageIndex: self.$currentPage).padding(.trailing, 10)
        }
    }
}

struct PageController_Previews: PreviewProvider {
    static var previews: some View {
        PageController(viewControllers: Page.data.map { UIHostingController(rootView: PageView(page: $0))}, selectedIndex: .constant(0))
    }
}
