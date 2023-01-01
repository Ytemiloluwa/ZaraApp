//
//  FilledButton.swift
//  ZaraApp
//
//  Created by Temiloluwa on 01/01/2023.
//

import SwiftUI

struct FilledButton: View {
    var text: String
    var action = {}
    var body: some View {
        
        Button(action: action, label: {
            
            Text("text")
                .boldFont()
                .reverseTextColor()
                .padding(.horizontal, 30)
                .padding(.vertical, 10)
        })

    }
}

struct FilledButton_Previews: PreviewProvider {
    static var previews: some View {
        FilledButton(text: "LOG IN")
            .reverseBgColor()
    }
}
