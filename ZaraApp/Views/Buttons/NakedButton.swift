//
//  NakedButton.swift
//  ZaraApp
//
//  Created by Temiloluwa on 01/01/2023.
//

import SwiftUI

struct NakedButton: View {
    var text: String
    var alignment: Alignment = .center
    var action = {}
    
    var body: some View {
        
        Button(action: action, label: {
            
            Text(text)
                .lightFont()
                .textColor()
                .padding(.vertical, 10)
                .frame(maxWidth: .infinity, alignment: alignment)
        })
    }
}

struct NakedButton_Previews: PreviewProvider {
    static var previews: some View {
        NakedButton(text: "Have you forgotten your password?")
    }
}
