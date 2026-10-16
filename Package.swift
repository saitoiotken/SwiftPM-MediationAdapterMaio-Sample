// swift-tools-version:5.9

import PackageDescription

let package = Package(
    name: "FluctSDKMediationAdapterMaio",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "FluctSDKMediationAdapterMaio",
            targets: ["FluctSDKMediationAdapterMaio"]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/voyagegroup/FluctSDK-iOS-Swift-Package.git",
            exact: "6.44.7"
        ),
        .package(
            url: "https://github.com/imobile/MaioSDK-v2-iOS.git",
            exact: "2.2.3"
        ),
    ],
    targets: [
        .target(
            name: "FluctSDKMediationAdapterMaio",
            dependencies: [
                .product(name: "FluctSDK", package: "FluctSDK-iOS-Swift-Package"),
                .product(name: "MaioSDK", package: "MaioSDK-v2-iOS")
            ],
            publicHeadersPath: "include"
        ),
    ]
)
