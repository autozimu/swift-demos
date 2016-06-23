import XCTest

import FooTestSuite

var tests = [XCTestCaseEntry]()

tests += FooTestSuite.allTests

XCTMain(tests)
