//
//  CloseButton.swift
//  ZaraApp
//
//  Created by Temiloluwa on 01/01/2023.
//

import SwiftUI

struct CloseButton: View {
    
    var onDismiss = {}
    
    var body: some View {
       
        Button(action: onDismiss, label: {
            
            Image(systemName: "xmark")
                .thinFont()
                .textColor()
        })
    }
}

struct CloseButton_Previews: PreviewProvider {
    static var previews: some View {
        CloseButton()
    }
}
