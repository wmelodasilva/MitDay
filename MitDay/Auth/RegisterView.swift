//
//  RegisterView.swift
//  MitDay
//
//  Created by WMELO on 04/09/25.
//

import SwiftUI

#Preview {
    RegisterView()
}
    
struct RegisterView: View {
    var body: some View {
        
        ZStack{
            Color(Color.verdeClaro)
                .ignoresSafeArea()
        
        
            VStack{
                
                Text("Seja Bem vindo")
                    .font(.largeTitle)
                    .foregroundStyle(Color.brancoPalido)
                    .fontWeight(.bold)
                    .padding(.top, -260)
                
                
                
                
            }
        }
    }
}

