//
//  TagViewSnapshotTests.swift
//  SparkCoreTests
//
//  Created by robin.lemaire on 04/05/2023.
//  Copyright © 2023 Adevinta. All rights reserved.
//

import XCTest
import SwiftUI
@testable import SparkTheme
@testable import SparkTheming
@_spi(SI_SPI) @testable import SparkInternal
@_spi(SI_SPI) @testable import SparkInternalTesting
@_spi(SI_SPI) @testable import SparkInternalSnapshotTesting

@testable import SparkTag

final class TagViewSnapshotTests: SwiftUIComponentSnapshotTestCase {

    // MARK: - Properties

    private let theme: Theme = SparkTheme.shared

    // MARK: - Tests

    func test() {
        let scenarios = TagScenarioSnapshotTests.allCases

        for scenario in scenarios {
            let configurations = scenario.configuration(isSwiftUIComponent: true)
            for configuration in configurations {
                let view = TagView(
                    theme: self.theme,
                    intent: configuration.intent,
                    variant: configuration.variant
                )
                    .iconImage(configuration.iconImage?.rightValue)
                    .text(configuration.text)
                    .frame(width: configuration.width)
                    .fixedSize()

                self.assertSnapshot(
                    matching: view,
                    modes: configuration.modes,
                    sizes: configuration.sizes,
                    testName: configuration.testName()
                )
            }
        }
    }
}
