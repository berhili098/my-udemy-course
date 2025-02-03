//
//  udemyApp.swift
//  udemy
//
//  Created by Oussama Berhili on 31/1/2025.
//

import SwiftUI
// Portrait = Compact width , regular height
@main
struct udemyApp: App {
    @State var language : String = "en"
    @State var languageDirection : String = leftToRight
    @State var colorScheme : ColorScheme = .light
    
    var body: some Scene {
        WindowGroup {
            MainView(
                    language: $language,
                    layoutDirectionString: $languageDirection,
                    colorScheme : $colorScheme
                
                    
            ).environment(\.locale, Locale(identifier: language))
                .environment(\.layoutDirection, languageDirection == leftToRight ? .leftToRight : .rightToLeft)
                .environment(\.colorScheme, colorScheme)
                
        }
    }
}
