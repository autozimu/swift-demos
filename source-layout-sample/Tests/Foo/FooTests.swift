import XCTest
import Foo

class FooTests: XCTestCase {
    func testFoo() {
        XCTAssertEqual(foo(), "foo")
    }

#if !os(OSX)
    static let allTests = [
        ("testFoo", testFoo)
    ]
#endif
}
