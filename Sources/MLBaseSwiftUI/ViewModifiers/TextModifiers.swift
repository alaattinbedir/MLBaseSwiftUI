//
//  File.swift
//  
//
//  Created by Alaattin Bedir on 1.07.2022.
//

import Foundation
import SwiftUI

struct TextModifier: ViewModifier {
    let color: UIColor
    func body(content: Content) -> some View {
        content
          .fixedSize(horizontal: false, vertical: true)
          .foregroundColor(Color(color))
          .multilineTextAlignment(.center)
          .lineLimit(nil)
    }
}
