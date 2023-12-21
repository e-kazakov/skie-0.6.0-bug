// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "sample",
    platforms: [.iOS(.v14)],
    products: [
        .library(
            name: "lib",
            targets: ["lib"]),
    ],
    targets: [
        .target(
            name: "lib",
            dependencies: [
                "shared",
            ]
        ),
        .binaryTarget(
            name: "shared",
            path: "../kmp/shared/build/XCFrameworks/release/shared.xcframework"
        )
    ]
)
