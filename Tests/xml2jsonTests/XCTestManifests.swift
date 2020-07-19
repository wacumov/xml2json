import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(xml2jsonTests.allTests),
    ]
}
#endif
