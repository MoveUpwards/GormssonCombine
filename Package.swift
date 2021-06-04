// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "GormssonCombine",
    platforms: [
        .iOS(.v13),
        .macOS(.v10_15)
    ],
    products: [
        .library(
            name: "GormssonCombine",
            targets: ["GormssonCombine"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/MoveUpwards/Gormsson.git", from: "1.5.0"),
        .package(url: "https://github.com/MoveUpwards/Nevanlinna.git", from: "0.7.0")
    ],
    targets: [
        .target(
            name: "GormssonCombine",
            dependencies: ["Gormsson", "Nevanlinna"],
            path: "Source"
        ),
    ]
)
