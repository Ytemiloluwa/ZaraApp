//
//  PageView.swift
//  ZaraApp
//
//  Created by Temiloluwa on 03/01/2023.
//

import SwiftUI

struct PageView: View {
    
    var page: Page
    
    var body: some View {
        VStack(spacing: 20){
            
            Text(page.title)
                .multilineTextAlignment(.center)
                .font(.system(size: 50, weight: Font.Weight.black, design: Font.Design.default))
                .textColor()
                .frame(width: Sizes.screenWidth * 0.95, alignment: .center)
            
            Text(page.description)
                .textColor()
                .multilineTextAlignment(.center)
                .frame(width: 300, alignment: .center)
            
            Text("View")
                .font(.system(size: 20, weight: Font.Weight.bold, design: Font.Design.default))
                .textColor()
                .padding(.horizontal, 30)
                .padding(.vertical, 10)
                .border(Color.text, width: 1)
            
            
            
        }.frame(height: Sizes.screenHeight)
            .bgColor()
            .edgesIgnoringSafeArea(.all)
    }
}

struct PageView_Previews: PreviewProvider {
    static var previews: some View {
        PageView(page: Page.default)
    }
}
