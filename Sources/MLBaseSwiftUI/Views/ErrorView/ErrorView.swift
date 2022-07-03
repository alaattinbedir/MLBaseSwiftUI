//
//  ErrorView.swift
//  NewsSwiftUIApp
//
//  Created by Alaattin Bedir on 3.07.2022.
//

import SwiftUI

public struct ErrorView: View {
    public typealias ErrorViewActionHandler = () -> Void

    public let error: ErrorInfo
    public let handler: ErrorViewActionHandler

    public init(error: ErrorInfo, handler: @escaping ErrorView.ErrorViewActionHandler) {
        self.error = error
        self.handler = handler
    }

    public var body: some View {
        VStack {
            Image(systemName: "exclamationmark.icloud.fill")
                .foregroundColor(.gray)
                .font(.system(size: 50, weight: .heavy))
                .padding(.bottom, 4)
            Text("Ooopss")
                .foregroundColor(.black)
                .font(.system(size: 30, weight: .heavy))
                .multilineTextAlignment(.center)
            Text(error.message)
                .foregroundColor(.gray)
                .font(.system(size: 15))
                .multilineTextAlignment(.center)
                .padding(.vertical, 4)
            Button {
                // we need to perform an action
                handler()
            } label: {
                Text("Retry")
            }
            .padding(.vertical,12)
            .padding(.horizontal, 30)
            .background(Color.blue)
            .foregroundColor(.white)
            .font(.system(size: 15, weight: .heavy))
            .cornerRadius(10)
        }.padding(20).foregroundColor(.black).background(.white).addBorder(Color.black, width: 1, cornerRadius: 10)
    }
}

struct ErrorView_Previews: PreviewProvider {
    static var previews: some View {
        ErrorView(error: ErrorInfo(id: 1003, title: "Warning", message: "Failed to decode the object from the service")){}
    }
}
