//
//  SwiftUIView.swift
//  
//
//  Created by Alaattin Bedir on 30.06.2022.
//

import SwiftUI
import UIKit

public struct LoadingView<Content>: View where Content: View {
    @Binding public var isShowing: Bool
    public var content: () -> Content


    public init(isShowing: Binding<Bool>, content: @escaping () -> Content) {
        self._isShowing = isShowing
        self.content = content
    }


    public var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .center) {

                self.content()
                    .disabled(self.isShowing)
                    .blur(radius: self.isShowing ? 3 : 0)

                VStack {
                    Text("Loading...")
                    ActivityIndicator(isAnimating: .constant(true), style: .large)
                }
                .frame(width: geometry.size.width / 2,
                       height: geometry.size.height / 5)
                .background(Color.secondary.colorInvert())
                .foregroundColor(Color.primary)
                .cornerRadius(20)
                .opacity(self.isShowing ? 1 : 0)

            }
        }
    }
}
