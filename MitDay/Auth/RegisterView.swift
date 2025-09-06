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
    @State private var nome: String = ""
    @State private var email: String = ""
    @State private var senha: String = ""
    var body: some View {
        
    ZStack{
        Color.verdeClaro
            .ignoresSafeArea()
        
      VStack{
                
        Text("CADASTRE-SE")
            .font(.largeTitle)
            .foregroundStyle(Color.brancoPalido)
            .fontWeight(.bold)
            .padding(.top, -30)
          
            VStack{
                TextField("Nome", text: $nome)
                    .padding()
                    .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 110, style: .continuous))
                    .overlay( RoundedRectangle(cornerRadius: 16)
                        .strokeBorder(Color.white.opacity(8), lineWidth: 1))
                    
                    .padding()
                
                TextField("E-mail", text: $email)
                    .padding()
                    .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 110, style: .continuous))
                    .overlay( RoundedRectangle(cornerRadius: 16)
                        .strokeBorder(Color.white.opacity(8), lineWidth: 1))
                    .padding()
                
                SecureField("Senha", text: $senha)
                    .padding()
                    .background(.ultraThinMaterial, in:RoundedRectangle(cornerRadius: 19))
                    .overlay(RoundedRectangle(cornerRadius: 19) .stroke(Color.white).opacity(30))
                    .padding()
                
                Button("Cadastrar") {
                        print("Cadastro realizado")
                    }
                    .padding()
                    
                    .background(Color.verdeEscuro.opacity(0.55) .opacity(0.7), in: RoundedRectangle(cornerRadius: 16))
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                    .padding(.horizontal, 20)
                
                    
                }
                
          
                
                
                
            }
        }
    }
}

