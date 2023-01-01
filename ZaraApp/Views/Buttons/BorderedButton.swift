//
//  BorderedButton.swift
//  ZaraApp
//
//  Created by Temiloluwa on 01/01/2023.
//

import SwiftUI

struct BorderedButton: View {
    var text: String
    var action = {}
    var body: some View {
        
        Button(action: action, label: {
            
            Text(text)
                .boldFont()
                .textColor()
                .padding(.horizontal, 30)
                .padding(.vertical, 10)
                .border(Color.text, width: 1)
        })
    }
}

struct BorderedButton_Previews: PreviewProvider {
    static var previews: some View {
        BorderedButton(text: "ADD")
    }
}
