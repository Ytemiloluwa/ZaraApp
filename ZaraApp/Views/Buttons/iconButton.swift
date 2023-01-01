//
//  iconButton.swift
//  ZaraApp
//
//  Created by Temiloluwa on 01/01/2023.
//

import SwiftUI

struct iconButton: View {
    var icon: String
    var action = { }
    var body: some View {
        
        Button(action: action, label: {
            
            Image(systemName: icon)
                .lightFont()
                .textColor()
        })
    }
}

struct iconButton_Previews: PreviewProvider {
    static var previews: some View {
        iconButton(icon: "square.and.arrow.up")
    }
}
