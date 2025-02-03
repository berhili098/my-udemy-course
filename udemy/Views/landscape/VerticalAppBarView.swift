//
//  VerticalAppBarView.swift
//  udemy
//
//  Created by Oussama Berhili on 3/2/2025.
//

import SwiftUI

struct VerticalAppBarView: View {
    var body: some View {
        VStack(alignment: .leading) {
            TitleView(title: LocalizedStringKey("Greetings"))
            CircleView()
            Spacer()
        }.padding()
    }
}

#Preview {
    VerticalAppBarView()
}
