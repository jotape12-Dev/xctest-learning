//
//  Item.swift
//  Calculadora
//
//  Created by Jota Pe on 02/03/26.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
