//
//  File.swift
//
//
//  Created by Alaattin Bedir on 1.07.2022.
//

import Foundation
import SwiftUI

public struct BaseView<Content: View>: View {
    @Binding public var isAlertPresented: Bool
    @Binding public var errorInfo: ErrorInfo
    public var content: Content

    public init(isAlertPresented: Binding<Bool>, errorInfo: Binding<ErrorInfo>, @ViewBuilder content: () -> Content) {
        self._isAlertPresented = isAlertPresented
        self._errorInfo = errorInfo
        self.content = content()
    }

    public var body : some View {
        content.alert(errorInfo.title,
                      isPresented: $isAlertPresented,
                      presenting: errorInfo,
                      actions: { error in
            Button("OK", action: {})
        }, message: { error in
            Text("\(error.message)")
        })
    }

    // Second method to show alert iOS 15 requires
//    public var body : some View {
//        content.alert(errorInfo.title,
//                      isPresented: $isAlertPresented,
//                      actions: {
//            Button("OK", action: {})
//        }, message: {
//            if let error = errorInfo {
//                Text("\(error.message)")
//            }
//        })
//    }
}
