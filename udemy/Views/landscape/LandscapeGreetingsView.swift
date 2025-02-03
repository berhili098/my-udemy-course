//
//  LandscapeGreetingsView.swift
//  udemy
//
//  Created by Oussama Berhili on 3/2/2025.
//

import SwiftUI

struct LandscapeGreetingsView: View {
    var body: some View {
        ZStack {
            BackgroundView()
            HStack {
                VerticalAppBarView()
                Spacer()
                MessagesView()
            }.padding(
                .vertical
            )
        }
    }
}

#Preview {
    LandscapeGreetingsView()
}
