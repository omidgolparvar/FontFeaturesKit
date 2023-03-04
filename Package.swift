// swift-tools-version: 5.7

import PackageDescription

let package = Package(
    name: "FontFeaturesKit",
	platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "FontFeaturesKit",
            targets: ["FontFeaturesKit"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "FontFeaturesKit",
            dependencies: []),
        .testTarget(
            name: "FontFeaturesKitTests",
            dependencies: ["FontFeaturesKit"]),
    ]
)
