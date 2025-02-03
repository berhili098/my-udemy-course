//
//  VerticalAppBarView.swift
//  udemy
//
//  Created by Oussama Berhili on 3/2/2025.
//

import SwiftUI

struct VerticalAppBarView: View {
    var body: some View {
        HStack {
            TitleView(title: LocalizedStringKey("Greetings"))
            Spacer()

            CircleView()
        }
    }
}

#Preview {
    VerticalAppBarView()
}
