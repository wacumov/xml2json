import xml2json_cpp

public struct XMLToJSON {
    
    public static func convert(_ xmlString: String) -> String? {
        guard let jsonString = convertToJSON(xmlString) else {
            return nil
        }
        return String(cString: jsonString)
    }
}
