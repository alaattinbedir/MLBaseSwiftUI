//
//  File.swift
//  
//
//  Created by Alaattin Bedir on 30.06.2022.
//

import Foundation
import Combine

public enum LoadingState {
    case idle
    case loading
    case failed(Decodable)
    case loaded(Decodable)
}

open class BaseViewModel: ObservableObject {
    @Published open var loadingState: LoadingState = .idle
    @Published open var error: Swift.Error?

    required public init() {
        // Intentionally unimplemented
    }

    deinit {
        print("*** \(String(describing: type(of: self))) deinitialized")
    }
}
