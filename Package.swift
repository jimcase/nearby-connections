// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "NearbyConnections",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "NearbyConnections",
            targets: ["NearbyConnectionsPlugin"])
    ],
    dependencies: [
        .package(url: "https://github.com/ionic-team/capacitor-swift-pm.git", branch: "main")
    ],
    targets: [
        .target(
            name: "NearbyConnectionsPlugin",
            dependencies: [
                .product(name: "Capacitor", package: "capacitor-swift-pm"),
                .product(name: "Cordova", package: "capacitor-swift-pm")
            ],
            path: "ios/Sources/NearbyConnectionsPlugin"),
        .testTarget(
            name: "NearbyConnectionsPluginTests",
            dependencies: ["NearbyConnectionsPlugin"],
            path: "ios/Tests/NearbyConnectionsPluginTests")
    ]
)