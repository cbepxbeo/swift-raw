// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "SwiftRaw",
    platforms: [.macOS(.v10_15), .iOS(.v13), .tvOS(.v13), .watchOS(.v6), .macCatalyst(.v13)],
    products: [
        .library(
            name: "SwiftRaw",
            targets: ["SwiftRaw"]),
    ],
    targets: [
        .target(
            name: "SwiftRaw",
            dependencies: [],
            path: "Sources"
        ),
        .testTarget(
            name: "SwiftRawTests",
            dependencies: ["SwiftRaw"]
         ),
    ],
    swiftLanguageVersions: [ .version("5.9") ]
)
