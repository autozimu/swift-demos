import XCTest

import Foo

class FooTests: XCTestCase {
    func testFoo() {
        XCTAssertEqual(foo(), "foo")
    }
}

extension FooTests {
    static var allTests: [(String, (FooTests) -> () throws -> Void)] {
        return [
            ("testFoo", testFoo)
        ]
    }
}
