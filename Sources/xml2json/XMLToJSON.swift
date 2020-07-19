import xml2json_cpp

public struct XMLToJSON {
    
    public static func convert(_ xmlString: String) -> String? {
        let jsonString = xmlString.withCString {
            convertToJSON($0)
        }
        guard let cString = jsonString else {
            return nil
        }
        return String(cString: cString)
    }
}
