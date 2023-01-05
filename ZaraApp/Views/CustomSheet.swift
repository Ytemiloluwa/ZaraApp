//
//  CustomSheet.swift
//  ZaraApp
//
//  Created by Temiloluwa on 04/01/2023.
//

import SwiftUI

struct CustomSheet<Content: View>: View {
    
    enum SheetState {
        
        case expanded
        case folded
        
    }
    
    @State private var yOffset: CGFloat = Sizes.screenHeight
    @State private var sheetState: SheetState = .folded
    
    @Binding var progress: CGFloat
    
    var foldedHeight: CGFloat
    var expandedHeight: CGFloat
    
    var content: (() -> Content)
    
    init(progress: Binding<CGFloat>, foldedHeight: CGFloat = 400, expandedHeight: CGFloat = Sizes.screenWidth , @ViewBuilder content: @escaping(() -> Content)) {
        
        self._progress = progress
        self.content = content
        self.foldedHeight = foldedHeight
        self.expandedHeight = expandedHeight
    }
    
    var body: some View {
        
        Group {
            
            createContent()
        }.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
            .onAppear(perform: {
                yOffset = deltaHeight()
            })
    }
    
    fileprivate func createContent() -> some View {
        
        
        Color.background
            .overlay(content(), alignment: .top)
            .frame(height: expandedHeight, alignment: .bottom)
            .offset(x: 0, y: yOffset)
            .gesture(DragGesture().onChanged({ drag  in
                
                HandleOnDrag(drag)
            }).onEnded { drag in
                
                handleOnEnded(drag)
            }
                     
            ).animation(.easeInOut, value: self.sheetState)
    }
    
    private func HandleOnDrag(_ drag: DragGesture.Value){
        
        self.yOffset = sheetState == .expanded ? max(drag.translation.height, 0) : min(drag.location.y, deltaHeight())
        
        self.progress = yOffset / deltaHeight()
        
    }
    
    private func handleOnEnded(_ drag: _ChangedGesture<DragGesture>.Value) {
        
        switch sheetState {
            
        case.expanded:
            
            resetValues(for: drag.translation.height > foldedHeight ? .folded : .expanded)
            
        case .folded:
            resetValues(for: abs(drag.location.y) < deltaHeight() ? .expanded : .folded)
        }
        
    }
    
    private func resetValues(for state: SheetState) {
        
        self.yOffset = state == .folded ? deltaHeight() : 0
        self.sheetState = state
        self.progress = state == .folded ? 1 : 0
    }
    
    private func deltaHeight() -> CGFloat {
        
        expandedHeight - foldedHeight
    }
}

struct CustomSheet_Previews: PreviewProvider {
    static var previews: some View {
        CustomSheet(progress: .constant(0), foldedHeight: 200, expandedHeight: UIScreen.main.bounds.height - 200) {
            
            Text("This is a custom sheet")
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.blue)
                .edgesIgnoringSafeArea(.all)
        }
    }
}
