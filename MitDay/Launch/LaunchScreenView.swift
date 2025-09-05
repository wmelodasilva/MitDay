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
    var body: some View {
        ZStack {
            Color(Color.brancoPalido)
                .ignoresSafeArea()
             
            VStack(spacing: 20) {
                ZStack {
                    RoundedRectangle(cornerRadius: 40)
                        .fill(Color.verdeClaro)
                        .frame(width: 240, height: 240)
                    
                    Image("IconLoading")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                }
                
                Text("MitDay")
                    .font(.system(size: 40))
                    .fontWeight(.bold)
                    .foregroundColor(.verdeClaro)
                
                Text("Todo grande dev começou com um commit")
                    .fontWeight(.bold)
            }
        }
    }
}
