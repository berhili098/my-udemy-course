//
//  udemyApp.swift
//  udemy
//
//  Created by Oussama Berhili on 31/1/2025.
//

import SwiftUI
import TipKit
// Portrait = Compact width , regular height
@main
struct udemyApp: App {
//    @State var language : String = "en"
//    @State var languageDirection : String = leftToRight
//    @State var colorScheme : ColorScheme = .light
    @AppStorage("language") var language : String = defaultLanguage
    @AppStorage("languageDirection") var languageDirection : String = leftToRight
    @AppStorage("colorScheme") var colorSchemeString : String = AppColorScheme.light.rawValue
    private var layoutDirection : LayoutDirection {
        languageDirection == leftToRight ? .leftToRight : .rightToLeft
    }
    private var colorScheme : ColorScheme {
        colorSchemeString == AppColorScheme.light.rawValue ? .light : .dark
    }
    

    var body: some Scene {
        WindowGroup {
            MainView(
                    language: $language,
                    layoutDirectionString: $languageDirection,
                    colorScheme : $colorSchemeString
                
                    
            ).environment(\.locale, Locale(identifier: language))
                .environment(\.layoutDirection, layoutDirection)
                .environment(\.colorScheme,  colorScheme)
                .task{
                    if AppConfig.isDebug {
                        print("debug mode")
                        try? Tips.resetDatastore()
                    }else{
                        print("release mode")
                    }
                    try? Tips.configure([
                        .displayFrequency(.immediate),
                        .datastoreLocation(.applicationDefault)
                    ])
                }
                
        }
    }
}
