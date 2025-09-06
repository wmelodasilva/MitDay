//
//  LaunchScreenView.swift
//  MitDay
//
//  Created by WMELO on 04/09/25.
// LaunchScreen.swift 
import SwiftUI
#Preview {
    LaunchScreen()
}

struct LaunchScreen: View {
    @State private var currentIndex = 0
    let mensager = [
        "Todo grande dev começou com um commit",
        "Um commit por dia afasta o desemprego",
        "Vamos criar hoje?"
    ]
    var body: some View {
        ZStack {
            Color(Color.brancoPalido)
                .ignoresSafeArea()
            
            VStack(spacing: 20) {
                ZStack {
                    RoundedRectangle(cornerRadius: 40)
                        .fill(Color.verdeClaro)
                        .frame(width: 240, height: 240)
                        .opacity(10)
                    
                    
                    Image("IconLoading")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                }
                
                Text("MitDay")
                    .font(.system(size: 40))
                    .fontWeight(.bold)
                    .foregroundColor(.verdeEscuro)
                
                Text(mensager[currentIndex])
                    .foregroundColor(.verdeEscuro)
                    .fontWeight(.bold)
                    .onAppear(){
                        Timer.scheduledTimer(withTimeInterval: 5, repeats: true) { _ in
                            withAnimation {
                                currentIndex = (currentIndex + 1) % mensager.count
                            }
                        }
                    }
            }
        }
        
    }
}

