import XCTest
import xml2json

final class xml2jsonTests: XCTestCase {

    private let testFilesFolder = URL(fileURLWithPath: #file)
        .deletingLastPathComponent()
        .deletingLastPathComponent()
        .deletingLastPathComponent()
        .appendingPathComponent("test")
    
    func testEmptyXMLString() {
        XCTAssertEqual(XMLToJSON.convert(""), "{}")
    }
    
    func testTrack1() throws {
        let (xmlString, jsonString) = try loadXmlAndJson("test_track_1.xml", "test_track_1.js.txt")
        XCTAssertEqual(XMLToJSON.convert(xmlString), jsonString)
    }
 
    func testTrack2() throws {
        let (xmlString, jsonString) = try loadXmlAndJson("test_track_2.xml", "test_track_2.js.txt")
        XCTAssertEqual(XMLToJSON.convert(xmlString), jsonString)
    }

    func testTrack3() throws {
        let (xmlString, jsonString) = try loadXmlAndJson("test_track_3.xml", "test_track_3.js.txt")
        XCTAssertEqual(XMLToJSON.convert(xmlString), jsonString)
    }

    private func loadXmlAndJson(_ xmlFilename: String, _ jsonFilename: String) throws -> (String, String) {
        let xmlFile = testFilesFolder.appendingPathComponent(xmlFilename)
        let xmlString = try String(contentsOf: xmlFile)
        
        let jsonFile = testFilesFolder.appendingPathComponent(jsonFilename)
        let jsonString = try String(contentsOf: jsonFile)
        
        return (xmlString, jsonString)
    }

    static var allTests = [
        ("testEmptyXMLString", testEmptyXMLString),
        ("testTrack1", testTrack1),
        ("testTrack2", testTrack2),
        ("testTrack3", testTrack3),
    ]
}
