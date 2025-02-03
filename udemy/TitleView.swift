//
//  TitleView.swift
//  udemy
//
//  Created by Oussama Berhili on 3/2/2025.
//

import SwiftUI

struct TitleView: View {
    let title: String
    @State private var subtitleContent = "Welcome to Swift programming"

    private let randomListOfSubTitles: [String] = [
        "Hello there !",
        "Welcome to Swift programming",
        "Are you ready",
        "Learning how to bake",
        "Programming recipes",
        "A quest for knowledget",
        "start exploring",
        "SwiftUI is amazing",
    ]
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Text(title).font(.largeTitle).fontWeight(.semibold)
            Text(subtitleContent).font(.headline).fontWeight(.thin)

        }.onTapGesture {
            withAnimation {
                subtitleContent = randomListOfSubTitles
                    .randomElement() ?? "Welcome to Swift programming"
            }
        }
    }
}

#Preview {
    TitleView(title: "Greetings")
}
