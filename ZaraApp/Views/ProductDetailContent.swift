//
//  ProductDetailContent.swift
//  ZaraApp
//
//  Created by Temiloluwa on 05/01/2023.
//

import SwiftUI

struct ProductDetailContent: View {
    
    var product: Product
    var body: some View {
        
        VStack(alignment: .leading, spacing: 30) {
            
            VStack(alignment: .leading, spacing: 10) {
                
                Text(product.title)
                    .font(.system(size: 15, weight: Font.Weight.bold, design: Font.Design.default))
                
                
                Text(product.price)
                    .font(.system(size: 14, weight: Font.Weight.light, design: Font.Design.default))
                
                HStack {
                    
                    BorderedButton(text: "ADD")
                    
                    Spacer()
                    
                    HStack(spacing: 20) {
                        
                        iconButton(icon: "square.and.arrow.up") {
                            
                            
                        }
                        iconButton(icon: "bookmark") {
                            
                            
                        }
                        iconButton(icon: "bag") {
                            
                            
                        }
                    }
                }
            }
            
            Text(product.description).font(.system(size: 14, weight: Font.Weight.light, design: Font.Design.default))
            
            VStack(alignment: .leading, spacing: 20) {
                ArrowButtton(text: "COMPOSITION AND CARE") {}
                ArrowButtton(text: "IN-STORE AVAILABILITY") {}
                ArrowButtton(text: "SHIPPING AND RETURNS") {}
                ArrowButtton(text: "CAN WE HELP YOU") {}
                
            }
        }.padding(.all, 20)
    }
}

struct ProductDetailContent_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailContent(product: Product.kids.first!)
    }
}
