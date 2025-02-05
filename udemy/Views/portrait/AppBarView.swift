//
//  AppBarView.swift
//  udemy
//
//  Created by Oussama Berhili on 3/2/2025.
//

import SwiftUI
import TipKit

struct AppBarView: View {
    private var udemyCourseTip = UdemyCourseTip()
    var body: some View {
        HStack {
            TitleView(title: LocalizedStringKey("Greetings"))
                .popoverTip(udemyCourseTip)
            Spacer()

            CircleView()
        }
    }
}

#Preview {
    AppBarView()
}
