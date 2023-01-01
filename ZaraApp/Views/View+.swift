//
//  View+.swift
//  ZaraApp
//
//  Created by Temiloluwa on 01/01/2023.
//

import Foundation
import SwiftUI

extension View {
    
    func thinFont() -> some View {
        
        self.font(.system(size: 20, weight: Font.Weight.thin, design: Font.Design.default))
    }
    
    func lightFont() -> some View {
        
        self.font(.system(size: 12, weight: Font.Weight.light, design: Font.Design.default))
    }
    
    func boldFont() -> some View {
        
        self.font(.system(size: 15, weight: Font.Weight.bold, design: Font.Design.default))
    
    }
    
    func textColor() -> some View {
        
        self.foregroundColor(.text)
    }
    
    func reverseTextColor() -> some View {
        
        self.foregroundColor(Color.background)
    }
    
    func bgColor() -> some View {
        
        self.background(Color.background)
    }
    
    func reverseBgColor() -> some View  {
        
        
        self.background(Color.text)
    }
}
