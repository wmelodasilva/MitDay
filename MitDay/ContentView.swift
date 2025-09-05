// ContentView.swift
import SwiftUI
#Preview {
    LaunchScreen()
}

struct ContentView: View {
    @State private var isLoading = true
    
    var LoadingMessage: String

    var body: some View {
        Group {
            if isLoading {
                LaunchScreen()
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
