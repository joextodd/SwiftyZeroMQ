// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ZeroMQ",
    platforms: [
        .iOS(.v9),
        .macOS(.v10_11),
    ],
    products: [
        .library(
            name: "ZeroMQ",
            targets: ["ZeroMQ"]),
        .library(
            name: "ZeroMQLib",
            targets: ["ZeroMQLib"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "LibZMQ",
            path: "Libraries/LibZMQ.xcframework"),
        .target(
            name: "ZeroMQLib",
            dependencies: ["LibZMQ"]),
        .target(
            name: "ZeroMQ",
            dependencies: ["ZeroMQLib"]),
        .testTarget(
            name: "ZeroMQTests",
            dependencies: ["ZeroMQ"]),
    ]
)
