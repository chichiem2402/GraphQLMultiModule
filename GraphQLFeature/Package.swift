// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "GraphQLFeature",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "GraphQLFeature",
            targets: ["GraphQLFeature"]),
    ],
    dependencies: [
        .package(name: "GraphQLCore", path: "../GraphQLCore"),
        .package(url: "https://github.com/apollographql/apollo-ios", .upToNextMajor(from: "1.0.0")),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "GraphQLFeature",
            dependencies: [
                .product(name: "GraphQLCore", package: "GraphQLCore"),
                .product(name: "Apollo", package: "apollo-ios")
            ]
        ),
        .testTarget(
            name: "GraphQLFeatureTests",
            dependencies: ["GraphQLFeature"]),
    ]
)
