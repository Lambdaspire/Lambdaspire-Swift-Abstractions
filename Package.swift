// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "LambdaspireAbstractions",
    platforms: [
        .iOS(.v17),
        .macOS(.v14),
        .watchOS(.v10),
        .tvOS(.v17),
        .visionOS(.v1)
    ],
    products: [
        .library(
            name: "LambdaspireAbstractions",
            targets: ["LambdaspireAbstractions"]),
    ],
    targets: [
        .target(
            name: "LambdaspireAbstractions"),
        .testTarget(
            name: "LambdaspireAbstractionsTests",
            dependencies: ["LambdaspireAbstractions"]),
    ]
)
