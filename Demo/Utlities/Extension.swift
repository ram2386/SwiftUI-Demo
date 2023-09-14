//
//  Extension.swift
//  Demo
//
//  Created by Ramkrishna on 26/06/23.
//

import SwiftUI

extension Font {
    
    static func fontNats(size: CGFloat) -> Font {
        if let customFont = UIFont(name: "NATS", size: size) {
            return Font(customFont)
        } else {
            return Font.system(size: size)
        }
    }
}
