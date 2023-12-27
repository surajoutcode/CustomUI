// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CustomUI",
    products: [
        .library(
            name: "CustomUI",
            targets: ["CustomUI"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "CustomUI",
            path: "Sources")
    ]
)
