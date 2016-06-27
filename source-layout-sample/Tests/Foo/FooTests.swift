import XCTest
@testable import Foo

class FooTests: XCTestCase {
    func testFoo() {
        XCTAssertEqual(foo(), "foo")
    }

    static var allTests = [
        ("testFoo", testFoo)
    ]
}
