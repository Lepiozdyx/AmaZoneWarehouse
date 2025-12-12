import SwiftUI

struct ContentView: View {
    @StateObject private var manager = StateService()
        
    var body: some View {
        Group {
            switch manager.appState {
            case .request:
                LoadingView()
                
            case .support:
                if let url = manager.networkManager.amaURL {
                    WKWebViewManager(
                        url: url,
                        webManager: manager.networkManager
                    )
                } else {
                    WKWebViewManager(
                        url: NetworkService.initURL,
                        webManager: manager.networkManager
                    )
                }
                
            case .loading:
                RootView()
            }
        }
        .onAppear {
            manager.stateRequest()
        }
    }
}

#Preview {
    ContentView()
}
