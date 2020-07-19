#include "xml2json.hpp"

extern "C" __attribute__((visibility("default"))) const char * convertToJSON(const char *xml_str) {
    std::string str = xml2json(xml_str);
    char *s = new char[str.size() + 1]{};
    std::copy(str.begin(), str.end(), s);
    return s;
}
