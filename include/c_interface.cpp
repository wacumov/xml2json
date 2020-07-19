#include "xml2json.hpp"

extern "C" __attribute__((visibility("default"))) const char * convertToJSON(const char *xml_str) {
    return xml2json(xml_str).c_str();
}
