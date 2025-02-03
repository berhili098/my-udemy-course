//
//  BackgroundView.swift
//  udemy
//
//  Created by Oussama Berhili on 3/2/2025.
//

import SwiftUI

struct BackgroundView: View {
    var body: some View {
        LinearGradient(
            colors: [
                .myBlue1, .myBlue2,
            ],
            startPoint: .topLeading,
            endPoint: .bottomTrailing
        )
        .opacity(0.3)
        .ignoresSafeArea()
    }
}

#Preview {
    BackgroundView()
}
