// swift-tools-version:5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MetaAdapter",
    platforms: [.iOS(.v15)],
    products: [
        .library(name: "MetaAdapter", targets: ["MetaAdapter"]),
    ],
    dependencies: [
        .package(url: "https://github.com/googleads/swift-package-manager-google-mobile-ads.git", exact: "10.7.0"),
    ],
    targets: [
        .target(
            name: "GoogleMobileAds",
            dependencies: [
                .product(name: "GoogleMobileAds", package: "swift-package-manager-google-mobile-ads"),
                .target(name: "MetaAdapter"),
            ]
        ),
        .binaryTarget(
            name: "MetaAdapter",
            url: "https://github.com/EvsenevDev/MetaAdapterAdmob-SPM/raw/main/MetaAdapter.xcframework.zip",
            checksum: "20e2d01336bb9c10847501ed865b05d2fec86b73d68ea958f4583f65fedf0c63"
        ),
    ]
)