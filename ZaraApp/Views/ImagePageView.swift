//
//  ImagePageView.swift
//  ZaraApp
//
//  Created by Temiloluwa on 05/01/2023.
//

import SwiftUI
import Kingfisher

struct ImagePageView: View {
    var image: String
    private let screenWidth = Sizes.screenWidth
    private let screenHeight = Sizes.screenHeight
    
    var body: some View {
        
        URL(string: image).map {
            
            KFImage($0)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: screenWidth, height: screenHeight)
            
        }
    }
}

struct ImagePageView_Previews: PreviewProvider {
    static var previews: some View {
        ImagePageView(image: "zara-textured-check-shirt 3.JPG")
    }
}
