//
//  AppConfig.swift
//  udemy
//
//  Created by Oussama Berhili on 4/2/2025.
//

struct AppConfig {
    static let isDebug: Bool = {
        #if DEBUG
            return true
        #else
            return false
        #endif
    }()
}
