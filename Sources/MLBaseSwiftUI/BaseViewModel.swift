//
//  File.swift
//  
//
//  Created by Alaattin Bedir on 30.06.2022.
//

import Foundation
import Combine

open class BaseViewModel: ObservableObject {

    required public init() {
        // Intentionally unimplemented
    }

    deinit {
        print("*** \(String(describing: type(of: self))) deinitialized")
    }
}
