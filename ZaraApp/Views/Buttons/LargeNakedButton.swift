//
//  LargeNakedButton.swift
//  ZaraApp
//
//  Created by Temiloluwa on 01/01/2023.
//

import SwiftUI

struct LargeNakedButton: View {
    var text: String
    var action = { }
    var body: some View {
        Text(text)
            .font(.system(size: 30, weight: Font.Weight.black, design: Font.Design.default))
            .foregroundColor(.text)
            .frame(maxWidth: .infinity, alignment: .leading)
    }
}

struct LargeNakedButton_Previews: PreviewProvider {
    static var previews: some View {
        LargeNakedButton(text: "MY INFORMATION")
    }
}
