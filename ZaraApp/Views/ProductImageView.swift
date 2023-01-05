//
//  ProductImageView.swift
//  ZaraApp
//
//  Created by Temiloluwa on 05/01/2023.
//

import SwiftUI
import Kingfisher

struct ProductImageView: View {
    
    var imageUrl: String
    
    var animation: Namespace.ID
    var onDismissPreview = {}
    
    @State private var zoomLevel: CGFloat = 1
    @State private var offset: CGSize = .zero
    
    var body: some View {
        
        ImagePageView(image: imageUrl)
            .scaleEffect(self.zoomLevel)
            .offset(self.offset)
            
            .gesture(handleDragGesture())
            .gesture(handleMagnificationGesture())
            .onTapGesture(count: 2, perform: handleDoubleTapGesture)
            .onTapGesture(count: 1, perform: handleSingleTapGesture)
            .background(Color.background)
            .edgesIgnoringSafeArea(.all)
            .animation(.easeIn, value: self.zoomLevel)
    }
    
    private func handleDragGesture() -> _EndedGesture<_ChangedGesture<DragGesture>> {
        
        return DragGesture()
        
            .onChanged({ value in
                if zoomLevel > 1 {
                    
                    self.offset = value.translation
                }
            }).onEnded( { value in
                withAnimation {
                    self.offset = .zero
                }
            })
    }
    
    private func handleMagnificationGesture() -> _EndedGesture<_ChangedGesture<MagnificationGesture>> {
        
        return MagnificationGesture().onChanged( { (value) in
            
            self.zoomLevel = value
        }).onEnded { value in
            if value < CGFloat(1) {
                
                self.zoomLevel
            }
        }
    }
    
    private func handleSingleTapGesture() {
        
        if zoomLevel == 1 {
            
            onDismissPreview()
        }
    }
    
    private func handleDoubleTapGesture() {
        
        if zoomLevel > 1 {
            
            zoomLevel = 1
        }else {
            
            zoomLevel = 2
        }
    }
}

struct ProductImageView_Previews: PreviewProvider {
    
    @Namespace static var animation
    static var previews: some View {
        ProductImageView(imageUrl: "", animation: animation)
    }
}
