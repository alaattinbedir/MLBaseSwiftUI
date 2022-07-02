//
//  AlertView.swift
//  WeatherSwiftUI
//
//  Created by Alaattin Bedir on 1.07.2022.
//

import Foundation
import SwiftUI

public struct AlertView: View {
    @State public var showAlert = false
    @State public var errorInfo: ErrorInfo

    public init(errorInfo: ErrorInfo) {
        self.showAlert = true
        self.errorInfo = errorInfo
    }

    public var body: some View {
        BaseView(isAlertPresented: $showAlert, errorInfo: $errorInfo) {
            empty()
        }
    }
}
