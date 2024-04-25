// The Swift Programming Language
// https://docs.swift.org/swift-book

import Foundation

/// HelloWorldManは「Hello World」と言うことができる
/// 声の大きさもシチュエーションによって使い分けることができる
public struct HelloWorldMan {

    /// HelloWorldManの名前
    private(set) var name: String

    /// `name`を持つHelloWorldManを作り出す
    ///
    /// - Parameter name: HelloWorldManの名前
    ///
    /// - Note: HelloWorldManの生年月日は不明である
    ///
    public init(name: String) {
        self.name = name
    }

    /// HelloWorldManが`HelloWorld`と言う
    ///
    /// 声の大きさを選べるので美術館など静かな場所でも安心して`HelloWorld`と言える
    ///
    /// - Parameter voiceKind: どのような声で言うかを選べる
    /// - SeeAlso: `VoiceKind`
    ///
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
