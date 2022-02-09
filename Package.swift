// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ZeroMQ",
    products: [
        .library(
            name: "ZeroMQ",
            targets: ["ZeroMQ"]),
    ],
    targets: [
        .binaryTarget(
            name: "LibZMQ",
            path: "Libraries/LibZMQ.xcframework"),
        .target(
            name: "ZeroMQ",
            dependencies: ["LibZMQ"],
            publicHeadersPath: "Headers/**",
            cSettings: [
                .headerSearchPath("Headers/**"),
            ],
            linkerSettings: [
                .linkedLibrary("zmq"),
                .linkedFramework("LibZMQ.xcframework")
            ]),
        .testTarget(
            name: "ZeroMQTests",
            dependencies: ["ZeroMQ"]),
    ]
)
