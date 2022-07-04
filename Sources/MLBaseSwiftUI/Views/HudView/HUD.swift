//
//  File.swift
//  
//
//  Created by Alaattin Bedir on 4.07.2022.
//

import Foundation
import SwiftUI

public struct HUD<Content: View>: View {
    @ViewBuilder public let content: Content

    public init(content: Content) {
        self.content = content
    }

    public var body: some View {
        content
            .padding(.horizontal, 12)
            .padding(16)
            .background(
                Capsule()
                    .foregroundColor(Color.white)
                    .shadow(color: Color(.black).opacity(0.16), radius: 12, x: 0, y: 5)
            )
    }
}
