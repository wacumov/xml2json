import xml2json_cpp

public struct XMLToJSON {
    
    public static func convert(_ xmlString: String) -> String? {
        let maybeJsonString = xmlString.withCString {
            convertToJSON($0)
        }
        guard let jsonString = maybeJsonString else {
            return nil
        }
        let cString = CString(string: jsonString)
        return cString.swiftString
    }
}

private struct CString {
    
    let string: UnsafePointer<Int8>
    
    var swiftString: String? {
         withUnsafePointer(to: self.string) {
            $0.withMemoryRebound(to: Int8.self, capacity: MemoryLayout.size(ofValue: self.string)) {
                String(cString: $0)
            }
         }
    }
}
