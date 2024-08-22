//
//  FruitCard.swift
//  Fructus
//
//  Created by Murillo R. Araújo on 10/04/24.
//

import SwiftUI

struct FruitCard: View {
    @State private var isAnimating = false
    
    var body: some View {
        ZStack {
            VStack(spacing: 20) {
                Image("blueberry")
                    .resizable()
                    .scaledToFit()
                    .shadow(color: .black.opacity(0.15), radius: 8, x: 6, y: 8)
                    .scaleEffect(isAnimating ? 1.0 : 0.6)
                
                Text("Blueberry")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: .black.opacity(0.15), radius: 2, x: 2, y: 2)
                
                Text("Blueberries are sweet, nutritious and wildly popular fruit all over the world")
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal)
                    .frame(maxWidth: 480)
                
                StartButton()
            }
        }
        .onAppear{
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimating = true
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(
            LinearGradient(
                colors: [.blueberryLight, .blueberryDark],
                startPoint: .top,
                endPoint: .bottom
            )
        )
        .clipShape(.rect(cornerRadius: 20))
        .padding(.horizontal, 20)
    }
}

#Preview {
    FruitCard()
}
