//
//  MessagesView.swift
//  udemy
//
//  Created by Oussama Berhili on 3/2/2025.
//

import SwiftUI

struct MessagesView: View {
    let messages: [DataItemModel] = [
        .init(color: .myGreen, text: "Hello there !"),
        .init(color: .myGray, text: "Welcome to Swift programming"),
        .init(color: .myYellow, text: "Are you ready"),
        .init(color: .myRed, text: "start exploring"),
        .init(color: .myPurple, text: "Boom"),
    ]
    var body: some View {
        ForEach(messages, id: \.id) { message in
            TextView(text: message.text, color: message.color)
        }
    }
}
