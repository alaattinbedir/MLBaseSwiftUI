//
//  File.swift
//  
//
//  Created by Alaattin Bedir on 2.07.2022.
//

import SwiftUI

public extension View {
    func empty() -> some View {
        Text("")
    }

    func bgView(opacity: Double = 0.5) -> some View {
        ZStack {
            Color.black.opacity(opacity)
        }
    }

    func addBorder<S>(_ content: S, width: CGFloat = 1, cornerRadius: CGFloat) -> some View where S : ShapeStyle {
             let roundedRect = RoundedRectangle(cornerRadius: cornerRadius)
             return clipShape(roundedRect)
                  .overlay(roundedRect.strokeBorder(content, lineWidth: width))
    }
}
