// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SparkTag",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(
            name: "SparkTag",
            targets: ["SparkTag"]
        ),
        .library(
            name: "SparkTagTesting",
            targets: ["SparkTagTesting"]
        )
    ],
    dependencies: [
        // Git
       .package(
           url: "https://github.com/robergro/spm-poc-common.git",
           branch: "main"
       ),
       .package(
           url: "https://github.com/robergro/spm-poc-theming.git",
           branch: "main"
       ),

        // Local
        // .package(
        //     path: "../spm-poc-common"
        // ),
        // .package(
        //     path: "../spm-poc-theming"
        // )
    ],
    targets: [
        .target(
            name: "SparkTag",
            dependencies: [
                .product(
                    name: "SparkInternal",
                    package: "spm-poc-common"
                ),
                .product(
                    name: "SparkTheming",
                    package: "spm-poc-theming"
                )
            ]
        ),
        .target(
            name: "SparkTagTesting",
            dependencies: [
                "SparkTag",
                .product(
                    name: "SparkInternal",
                    package: "spm-poc-common"
                ),
                .product(
                    name: "SparkInternalTesting",
                    package: "spm-poc-common"
                ),
                .product(
                    name: "SparkThemingTesting",
                    package: "spm-poc-theming"
                ),
                .product(
                    name: "SparkTheme",
                    package: "spm-poc-theming"
                )
            ]
        ),
        .testTarget(
            name: "SparkTagUnitTests",
            dependencies: [
                "SparkTag",
                "SparkTagTesting",
                .product(
                    name: "SparkInternalTesting",
                    package: "spm-poc-common"
                ),
                .product(
                    name: "SparkThemingTesting",
                    package: "spm-poc-theming"
                )
            ]
        ),
        .testTarget(
            name: "SparkTagSnapshotTests",
            dependencies: [
                "SparkTag",
                "SparkTagTesting",
                .product(
                    name: "SparkInternalSnapshotTesting",
                    package: "spm-poc-common"
                ),
            ]
        ),
    ]
)
