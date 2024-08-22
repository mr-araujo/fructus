//
//  Onboarding.swift
//  Fructus
//
//  Created by Murillo R. Araújo on 19/04/24.
//

import SwiftUI

struct Onboarding: View {
    var body: some View {
        TabView {
            ForEach(0..<5) { item in
                FruitCard()
            }
        }
        .tabViewStyle(.page)
        .padding(.vertical, 20)
    }
}

#Preview {
    Onboarding()
}
