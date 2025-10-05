//
//  AnimatedBlurBackground.swift
//  MitDay
//
//  Created by WMELO on 05/10/25.
//

import SwiftUI

struct AnimatedBlurBackground: View {
    // 🔹 1. Estado que guarda o ângulo da animação
    @State private var animate = false
    
    var body: some View {
        ZStack {
            // 🔹 2. Cria um gradiente com várias cores
            LinearGradient(
                colors: [
                    Color.green,
                    Color.verdeClaro,
                    Color.verdeEscuro,
                    Color.orange
                ],
                startPoint: animate ? .topLeading : .bottomTrailing,
                endPoint: animate ? .bottomTrailing : .topLeading
            )
            // 🔹 3. Faz o gradiente preencher a tela toda
            .ignoresSafeArea()
            
            // 🔹 4. Aplica blur (o desfoque)
            .blur(radius: 80)
            
            // 🔹 5. Anima a mudança de posição do gradiente
            .animation(
                .easeInOut(duration: 8)
                .repeatForever(autoreverses: true),
                value: animate
            )
            
            // 🔹 6. Conteúdo da tela (em cima do fundo)
        }
        // 🔹 7. Quando a tela aparecer, inicia a animação
        .onAppear {
            animate = true
        }
    }
}

#Preview {
    AnimatedBlurBackground()
}
