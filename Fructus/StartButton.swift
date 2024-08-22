//
//  StartButton.swift
//  Fructus
//
//  Created by Murillo R. Araújo on 19/04/24.
//

import SwiftUI

struct StartButton: View {
    var body: some View {
        Button(action: {
            print("Exit...")
        }, label: {
            HStack(spacing: 8) {
                Text("Start")
                
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(Capsule().strokeBorder(.white, lineWidth: 1.25))
        })
        .tint(.white)
    }
}

#Preview {
    ZStack {
        Color.black
            .ignoresSafeArea()
        StartButton()
    }
}
