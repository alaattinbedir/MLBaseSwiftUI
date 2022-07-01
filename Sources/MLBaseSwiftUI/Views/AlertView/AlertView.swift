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

        BaseAlertView(isAlertPresented: $showAlert, errorInfo: $errorInfo) {
            Text("")
        }
//        .onReceive(vm.publisher) { (output) in
        .onAppear {     // used instead of above just for test

//            self.showAlert = true
        }
    }
}
