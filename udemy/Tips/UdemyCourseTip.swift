//
//  UderCourseTip.swift
//  udemy
//
//  Created by Oussama Berhili on 4/2/2025.
//

import Foundation
import TipKit

struct UdemyCourseTip: Tip {
 
    var title : Text{
        Text("Click on text and disc")
    }
    var message : Text?{
        Text("New text will be randomly generated and observe nice animations!")
    }
    var asset : Image?{
        Image(systemName: "figure.walk.motion")
    }
}
