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
//        .package(
//            url: "https://github.com/robergro/spm-poc-common.git",
//            from: "1.0.0"
//        ),
//        .package(
//            url: "https://github.com/robergro/spm-poc-theming.git",
//            from: "1.0.0"
//        ),

        // Local
        .package(
            path: "../spm-poc-common"
        ),
        .package(
            path: "../spm-poc-theming"
        ),

        // External
        .package(
            url: "https://github.com/realm/SwiftLint",
            from: "0.54.0"
        )
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
            ],
            plugins: [
                .plugin(
                    name: "SwiftLintPlugin",
                    package: "SwiftLint"
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
            ],
            plugins: [
                .plugin(
                    name: "SwiftLintPlugin",
                    package: "SwiftLint"
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
                // TODO: do we need access to the Spark Theme ?
            ],
            plugins: [
                .plugin(
                    name: "SwiftLintPlugin",
                    package: "SwiftLint"
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
            ],
            plugins: [
                .plugin(
                    name: "SwiftLintPlugin",
                    package: "SwiftLint"
                )
            ]
        ),
    ]
)
