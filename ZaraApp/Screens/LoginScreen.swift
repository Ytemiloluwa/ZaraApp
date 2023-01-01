//
//  LoginScreen.swift
//  ZaraApp
//
//  Created by Temiloluwa on 01/01/2023.
//

import SwiftUI

struct LoginScreen: View {
    var onDismiss = {}
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        
        VStack {
            
            HStack {
                
                CloseButton(onDismiss: onDismiss)
                Spacer()
            }
            
            Spacer()
            
            VStack(spacing: 20) {
                
                VStack {
                    
                    TextField("Email", text: self.$email)
                    
                    Divider()
                }
                
                VStack {
                    
                    SecureField("Password", text: self.$password)
                    
                    Divider()
                }
                
                FilledButton(text: "LOG IN", action: onDismiss)
                    .frame(maxWidth: .infinity)
                    .reverseBgColor()
                
                NakedButton(text: "Have you forgotten your password?")
            }
            
            Spacer()
            
            VStack {
                
                BorderedButton(text: "CHAT", action: {})
                
                NakedButton(text: "Don't have an account? Register")
            }
        }.padding()
    }
}

struct LoginScreen_Previews: PreviewProvider {
    static var previews: some View {
        LoginScreen()
    }
}
