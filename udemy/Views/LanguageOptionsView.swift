//
//  LanguageOptionsView.swift
//  udemy
//
//  Created by Oussama Berhili on 3/2/2025.
//

import SwiftUI

struct LanguageOptionsView: View {
    @Binding var language : String
    @Binding var layoutDirectionString : String
    var body: some View {
        Image(systemName: "gearshape.fill")
            .contextMenu{
                Button(LocalizedStringKey("English")){
                    language = "en"
                    layoutDirectionString = leftToRight
                }
                Button(LocalizedStringKey("Arabic")){
                    language = "ar"
                    layoutDirectionString = rightToLeft
                }
                Button(LocalizedStringKey("Spanish")){
                    language = "es"
                    layoutDirectionString = leftToRight
                }
                Button(LocalizedStringKey("Hebrew")){
                    language = "he"
                    layoutDirectionString = rightToLeft
                }
            }
    }
}

#Preview {
    LanguageOptionsView(
         language: .constant("en"),
         layoutDirectionString: .constant(leftToRight)
    )
}
