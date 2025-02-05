//
//  ColorSchemeOptionsView.swift
//  udemy
//
//  Created by Oussama Berhili on 3/2/2025.
//

import SwiftUI

struct ColorSchemeOptionsView: View {
    @Binding var colorScheme : String
    
    @Environment(\.colorScheme) var defaultColorScheme
    
    
    var body: some View {
        Menu{
            
                    Button( LocalizedStringKey("Light")){
                        colorScheme = AppColorScheme.light.rawValue
                    }
                    Button((LocalizedStringKey("Dark"))){
                        colorScheme = AppColorScheme.dark.rawValue
                    }
                    Button((LocalizedStringKey("Default Theme"))){
                        colorScheme = defaultColorScheme == .dark ? AppColorScheme.dark.rawValue : AppColorScheme.light.rawValue
                    }
        }label: {
            Image(systemName: colorScheme == AppColorScheme.dark.rawValue ? "moon.fill": "sun.max.fill")
                .foregroundColor(.myBlack)
           
        }
           
    }
}

#Preview {
    ColorSchemeOptionsView(
        colorScheme: .constant(defaultColorScheme)
        
    )
}
