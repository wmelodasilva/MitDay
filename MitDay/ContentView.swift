// ContentView.swift
import SwiftUI
#Preview {
    RegisterView()
}

struct ContentView: View {
    @State private var isLoading = true

    var body: some View {
        Group {
            if isLoading {
                LaunchScreen()
            } else{
                RegisterView()
            }
        }
        
        .onAppear {
            // Simular loading
            DispatchQueue.main.asyncAfter(deadline: .now() + 30) {
                isLoading = false
            }
        }
    }
}
