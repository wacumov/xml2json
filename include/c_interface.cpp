#include "xml2json.hpp"

const char * convertToJSON(const char *xml_str) {
    return xml2json(xml_str).c_str();
}
