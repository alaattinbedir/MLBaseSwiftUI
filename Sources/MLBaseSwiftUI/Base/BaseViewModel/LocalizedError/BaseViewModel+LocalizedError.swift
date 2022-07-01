//
//  File.swift
//  
//
//  Created by Alaattin Bedir on 1.07.2022.
//

import Foundation
import Combine

public extension BaseViewModel {
    enum LocalError: LocalizedError {
        case networkError

        public var errorDescription: String? {
            switch self {
            case .networkError:
                return "Network Error"
            }
        }

        public var recoverySuggestion: String? {
            switch self {
            case .networkError:
                return "Unkown error occured while fething data"
            }
        }
    }

    func showLocalizedError(error: LocalizedError) {
        self.error = error
    }
}
