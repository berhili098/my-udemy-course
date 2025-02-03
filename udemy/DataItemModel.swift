//
//  DataItemModel.swift
//  udemy
//
//  Created by Oussama Berhili on 3/2/2025.
//

import Foundation
import SwiftUICore

struct DataItemModel: Identifiable {
    let id = UUID()
    let color: Color
    let text: String
}
