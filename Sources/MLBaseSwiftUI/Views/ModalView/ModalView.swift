//
//  SwiftUIView.swift
//  
//
//  Created by Alaattin Bedir on 1.07.2022.
//

import SwiftUI

public struct ModalView: View {
    @Environment(\.presentationMode) public var presentation
    private var message: String

    public init(message: String) {
        self.message = message
    }

    public var body: some View {
        VStack {
            Text(message)
            Button("Dismiss") {
                self.presentation.wrappedValue.dismiss()
            }
        }
    }
}
