# xml2json

[![Status](https://github.com/wacumov/xml2json/workflows/Test/badge.svg?branch=master)](https://github.com/wacumov/xml2json/actions?query=workflow%3ATest+branch%3Amaster)
![Swift 5.2](https://img.shields.io/badge/Swift-5.2-green.svg)
[![Swift Package](https://img.shields.io/static/v1?label=Swift&message=Package&logo=Swift&color=fa7343&style=flat)](https://github.com/Apple/swift-package-manager)
![Mac & Linux](https://img.shields.io/badge/platforms-mac+linux-brightgreen.svg?style=flat)

A Swift wrapper for [C++ library](https://github.com/Cheedoong/xml2json) that converts XML to JSON.

## Installation

### Swift Package Manager

[Swift Package Manager](https://swift.org/package-manager/) is a tool for
managing the distribution of Swift code. 
Once you have your Swift package set up, adding `xml2json` as a dependency is as
easy as adding it to the `dependencies` value of your `Package.swift`.
```swift
dependencies: [
    .package(url: "https://github.com/wacumov/xml2json", from: "0.0.1")
]
```

## Usage

Just read contents of an XML file to a string and pass it to the converter.
```swift
import xml2json

let jsonString = XMLToJSON.convert(xmlString)
```
