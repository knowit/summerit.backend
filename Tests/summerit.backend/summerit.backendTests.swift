import XCTest
@testable import summerit.backend

class summerit.backendTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        XCTAssertEqual(summerit.backend().text, "Hello, World!")
    }


    static var allTests : [(String, (summerit.backendTests) -> () throws -> Void)] {
        return [
            ("testExample", testExample),
        ]
    }
}
