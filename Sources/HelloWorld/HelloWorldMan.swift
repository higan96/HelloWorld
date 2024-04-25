// The Swift Programming Language
// https://docs.swift.org/swift-book

import Foundation

public struct HelloWorldMan {
    private(set) var name: String

    public init(name: String) {
        self.name = name
    }

    public func sayHelloWorld(with voiceKind: VoiceKind = .normalVoice) -> String {
        let man = "\(self.name) < "
        let message = "Hello World"

        switch voiceKind {
        case .normalVoice:
            return man + message
        case .smallVoice:
            return man + message.lowercased()
        case .loudVoice:
            return man + message.uppercased()
        }
    }
}
