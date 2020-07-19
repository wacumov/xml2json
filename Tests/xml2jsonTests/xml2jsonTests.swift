import XCTest
import xml2json

final class xml2jsonTests: XCTestCase {

    func testEmptyXMLString() {
        XCTAssertEqual(XMLToJSON.convert(""), "{}")
    }

    static var allTests = [
        ("testEmptyXMLString", testEmptyXMLString),
    ]
}
