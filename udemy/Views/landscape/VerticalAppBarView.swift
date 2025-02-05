//
//  VerticalAppBarView.swift
//  udemy
//
//  Created by Oussama Berhili on 3/2/2025.
//

import SwiftUI

struct VerticalAppBarView: View {
    private var udemyCourseTip = UdemyCourseTip()

    var body: some View {
        
        VStack(alignment: .leading) {
            TitleView(title: LocalizedStringKey("Greetings"))
                .popoverTip(udemyCourseTip)
            CircleView()
            Spacer()
        }.padding()
    }
}

#Preview {
    VerticalAppBarView()
}
