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
        AnimatedBlurBackground()
        
        Color.brancoPalido.opacity(0)
            .ignoresSafeArea()
        
      VStack{
                
        Text("CRIAR CONTA")
            .font(.largeTitle)
            .foregroundStyle(Color.white)
            .fontWeight(.bold)
            .padding(.top, -30)
          
            VStack{
                TextField("Nome", text: $nome)
                    .padding()
                    .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 110, style: .continuous))
                    .overlay( RoundedRectangle(cornerRadius: 16)
                        .strokeBorder(Color.verdeEscuro.opacity(0), lineWidth: 1))
                    
                    .padding()
    
                TextField("E-mail", text: $email)
                    .padding()
                    .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 110, style: .continuous))
                    .overlay( RoundedRectangle(cornerRadius: 16)
                        .strokeBorder(Color.verdeEscuro.opacity(0), lineWidth: 1))
                    .padding()
                
                SecureField("Senha", text: $senha)
                    .padding()
                    .background(.ultraThinMaterial, in:RoundedRectangle(cornerRadius: 19))
                    .overlay(RoundedRectangle(cornerRadius: 19) .stroke(Color.verdeEscuro).opacity(0))
                    .padding()
                
                Button("Cadastrar") {
                        print("Cadastro realizado")
                    }
                .frame(width: 250)
                .padding()
                    .background(Color.verdeEscuro.opacity(1) .opacity(0.7), in: RoundedRectangle(cornerRadius: 13))
                    .foregroundColor(.white)
                }
                
          HStack {
            
              Rectangle().frame(height: 1).opacity(0.4)
              Text("OU")
                  .font(.subheadline)
                  .foregroundStyle(Color.white)
              Rectangle().frame(height: 1).opacity(0.2)
          }
          .padding(.horizontal, 40)
          //FLUXO DE CADASTRO COM O GITHUB
          HStack(spacing:16){
              HStack{
                  if UIImage(named: "github") != nil {
                      Image("github")
                          .resizable()
                          .aspectRatio(contentMode: .fit)
                          .frame(width: 10, height: 10)
                  }else{
                      Image(systemName: "chevron.left.slash.chevron.right")
                  }
                  
                  Text("Continuar com Github")
                      .font(.subheadline)
                      .fontWeight(.medium)
              }
              .frame(width: 300, height: 10)
                .padding(.vertical, 12)
                .background(RoundedRectangle(cornerRadius: 12).strokeBorder(Color.white.opacity(0.40)))
                .background(RoundedRectangle(cornerRadius: 12).fill(Color.white.opacity(0.4)))
                .foregroundColor(.white)
              
                .padding(.vertical, 40)
          }
          
          HStack(spacing:16){
              HStack{
                  if UIImage(named: "google") != nil{
                      Image("google")
                          .resizable()
                          .aspectRatio(contentMode: .fit)
                          .frame(width: 10, height: 10)
                  }else{
                      Image(systemName: "globe")
                  }
                  
                  Text("Continuar com Google")
                      .font(.subheadline)
                      .fontWeight(.medium)
              }
              .frame(width: 300, height: 10)
                .padding(.vertical, 12)
                .background(RoundedRectangle(cornerRadius: 12).strokeBorder(Color.white.opacity(0.40)))
                .background(RoundedRectangle(cornerRadius: 12).fill(Color.white.opacity(0.4)))
                .foregroundColor(.white)
          }
                
            }
        }
    }
}

