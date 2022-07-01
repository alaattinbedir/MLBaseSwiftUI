//
//  File.swift
//  
//
//  Created by Alaattin Bedir on 1.07.2022.
//

import Foundation
import UIKit
import SwiftUI

public struct BaseView<Content: View>: View {
    @StateObject public var vm = BaseViewModel()

    public var content: Content

    public init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }

    public var body : some View {
        content.errorAlert(error: $vm.error)
    }
}
