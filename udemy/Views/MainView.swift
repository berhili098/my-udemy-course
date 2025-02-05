//
//  MainView.swift
//  udemy
//
//  Created by Oussama Berhili on 3/2/2025.
//

import SwiftUI

struct MainView: View {
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @Environment(\.verticalSizeClass) var verticalSizeClass
    @Binding var language: String
    @Binding var layoutDirectionString: String
    @Binding var colorScheme : String
    
    private var isPortrait: Bool {
        horizontalSizeClass == .compact && verticalSizeClass == .regular
    }
    
    private var isIpad: Bool {
        UIDevice.current.userInterfaceIdiom == .pad
    }
    
    var body: some View {
        NavigationStack {
            contentView
                .toolbar {
                    ToolbarItem(placement: .navigation) {
                        LanguageOptionsView(language: $language, layoutDirectionString: $layoutDirectionString)
                    }
                    ToolbarItem(placement: .automatic) {
                        ColorSchemeOptionsView(colorScheme: $colorScheme)
                        
                    }
                }
            
        }
    }
    
    @ViewBuilder
    private var contentView: some View {
        if isPortrait || isIpad {
            UdemyCourseView()
        } else {
            LandscapeGreetingsView()
        }
    }
}

#Preview {
    MainView(
        language: .constant(defaultLanguage),
        layoutDirectionString: .constant(leftToRight),
        colorScheme: .constant(AppColorScheme.light.rawValue)
    )
}
