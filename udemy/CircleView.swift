//
//  CircleView.swift
//  udemy
//
//  Created by Oussama Berhili on 3/2/2025.
//

import SwiftUI

struct CircleView: View {
    let lineWidth = 15.0
    let diameter = 70.0

    @State private var isRotated = false

    var angle: Angle {
        return !isRotated ? .zero : Angle(degrees: 360)
    }

    var angularGradient: AngularGradient {
        return AngularGradient(
            gradient: Gradient(colors: [.myPink, .myPurple, .myBlue1, .orange, .myYellow]),
            center: .center,
            angle: angle
        )
    }

    var body: some View {
        Circle()
            .strokeBorder(
                angularGradient,
                lineWidth: lineWidth
            )
            .rotationEffect(angle)
            .frame(width: diameter, height: diameter)
            .onTapGesture {
                withAnimation(.easeInOut(duration: 1.0)) {
                    isRotated.toggle()
                }
            }
    }
}

#Preview {
    CircleView()
}
