// swift-tools-version:5.2

import PackageDescription

let package = Package(
    name: "xml2json",
    products: [
        .library(
            name: "xml2json_cpp",
            targets: ["xml2json_cpp"]),
        .library(
            name: "xml2json",
            targets: ["xml2json"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "xml2json_cpp",
            dependencies: [],
            path: "./include"),
        .target(
            name: "xml2json",
            dependencies: ["xml2json_cpp"])
    ],
    cLanguageStandard: .c11,
    cxxLanguageStandard: .cxx11
)
