import SwiftUI

struct LoadingView: View {
    @State private var loading: CGFloat = 0
    
    var body: some View {
        ZStack {
            Image("SplashBackground")
                .resizable()
                .ignoresSafeArea()
            
            VStack {
                Spacer()
                
                ZStack {
                    Circle()
                        .fill(DesignSystem.Colors.white)
                        .frame(width: 256, height: 256)
                        .overlay(
                            Circle()
                                .stroke(DesignSystem.Colors.primary, lineWidth: 8)
                        )
                    
                    VStack(spacing: 16) {
                        Image("AppLogoIcon")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 83, height: 82)
                        
                        Text("Ama: Zone\nWarehouse")
                            .font(DesignSystem.Fonts.headline)
                            .foregroundStyle(DesignSystem.Colors.primary)
                            .multilineTextAlignment(.center)
                    }
                }
                
                Spacer()
                
                ProgressView()
                    .scaleEffect(2)
                    .padding(.bottom)
            }
            
        }
        .onAppear {
            withAnimation(.linear(duration: 3)) {
                loading = 1
            }
        }
    }
}

#Preview {
    LoadingView()
}
