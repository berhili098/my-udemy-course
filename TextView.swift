//
//  TextView.swift
//  udemy
//
//  Created by Oussama Berhili on 31/1/2025.
//

import SwiftUI

struct TextView: View {
    let text: String
    @State var color: Color

    let colors: [Color] = [
        .red,
        .green,
        .blue,
        .yellow,
        .purple,
        Color(red: 0.5, green: 0, blue: 0.5),
        Color(red: 0, green: 0.5, blue: 0.5),
        Color(red: 139 / 255, green: 207 / 255, blue: 240 / 255),
        Color(red: 1, green: 215 / 255, blue: 0),
    ]

    var body: some View {
        Text(text)

            .fontWeight(.semibold)
            .padding()
            .foregroundStyle(Color.white)
            .background(color.opacity(0.4))
            .cornerRadius(20)
            .shadow(
                color: color,
                radius: 3,
                x: 10, y: 10
            )
            .onTapGesture {
                // Randomly change the color of the text
                withAnimation(.easeInOut(duration: 0.13)) {
                    color = colors.randomElement() ?? .red
                }
            }
    }
}

#Preview {
    TextView(text: "Hummus", color: .blue)
}
