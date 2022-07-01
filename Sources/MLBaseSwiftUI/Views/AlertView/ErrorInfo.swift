//
//  File.swift
//  
//
//  Created by Alaattin Bedir on 1.07.2022.
//

import Foundation

public struct ErrorInfo: Identifiable {
    public var id: Int
    public let title: String
    public let message: String

    public init (id: Int, title: String, message: String) {
        self.id = id
        self.title = title
        self.message = message
    }
}
