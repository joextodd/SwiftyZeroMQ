// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
    name: "SwiftyZeroMQ",
    platforms: [
        .iOS(.v9),
        .macOS(.v10_11),
    ],
    products: [
        .library(
            name: "SwiftyZeroMQ",
            targets: ["SwiftyZeroMQ"]),
    ],
    targets: [
        .target(
            name: "SwiftyZeroMQ")
    ]
)
