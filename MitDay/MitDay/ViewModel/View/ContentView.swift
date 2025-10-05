import SwiftUI

struct ContentView: View {
    @State private var isLoading = true

    var body: some View {
        Group {
            if isLoading {
                LaunchScreen()
            } else {
                RegisterView()
            }
        }
        .onAppear {
            // Simular loading
            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                isLoading = false
            }
        }
    }
}

#Preview {
    ContentView()
}

