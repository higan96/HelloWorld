import XCTest
@testable import HelloWorld

final class HelloWorldManTests: XCTestCase {
    func test_sayHelloWorld() throws {
        let john = HelloWorldMan(name: "John")

        XCTAssertEqual(john.name, "John")

        XCTAssertEqual(john.sayHelloWorld(), "John < Hello World")
        XCTAssertEqual(john.sayHelloWorld(with: .smallVoice), "John < hello world")
        XCTAssertEqual(john.sayHelloWorld(with: .loudVoice), "John < HELLO WORLD")
    }
}
