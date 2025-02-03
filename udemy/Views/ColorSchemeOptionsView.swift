//
//  ColorSchemeOptionsView.swift
//  udemy
//
//  Created by Oussama Berhili on 3/2/2025.
//

import SwiftUI

struct ColorSchemeOptionsView: View {
    @Binding var colorScheme : ColorScheme
    
    @Environment(\.colorScheme) var defaultColorScheme
    var body: some View {
        
            Image(systemName: "globe")
                .contextMenu{
                    Button( LocalizedStringKey("Light")){
                        colorScheme = .light
                    }
                    Button((LocalizedStringKey("Dark"))){
                        colorScheme = .dark
                    }
                    Button((LocalizedStringKey("Default Theme"))){
                        colorScheme = defaultColorScheme
                    }
                }
    }
}

#Preview {
    ColorSchemeOptionsView(
        colorScheme: .constant(.light)
        
    )
}
