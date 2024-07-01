// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftUIToolkit",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "SwiftUIToolkit",
            targets: ["SwiftUIToolkit"]),
    ],
    dependencies: [
        .package(url: "https://github.com/kristian-kiraly/ViewControllerManager", from: "1.0.0"),
        .package(url: "https://github.com/kristian-kiraly/AsyncButtons", from: "1.0.0"),
        .package(url: "https://github.com/kristian-kiraly/UIKitSwiftUIViews", from: "1.0.0"),
        .package(url: "https://github.com/kristian-kiraly/FileManagerPersistence", from: "1.0.0"),
        .package(url: "https://github.com/kristian-kiraly/PageableDataManager", from: "1.0.0"),
        .package(url: "https://github.com/kristian-kiraly/CachedSounds", from: "1.0.0"),
        .package(url: "https://github.com/kristian-kiraly/SwipeActions", from: "1.0.0"),
        .package(url: "https://github.com/kristian-kiraly/SwiftUIColorPicker", from: "1.0.0"),
        .package(url: "https://github.com/kristian-kiraly/NumberTextField", from: "1.0.0"),
        .package(url: "https://github.com/kristian-kiraly/DigitView", from: "1.0.0"),
        .package(url: "https://github.com/kristian-kiraly/CustomList", from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "SwiftUIToolkit",
            dependencies: [
                "ViewControllerManager",
                "AsyncButtons",
                "UIKitSwiftUIViews",
                "FileManagerPersistence",
                "PageableDataManager",
                "CachedSounds",
                "SwipeActions",
                "SwiftUIColorPicker",
                "NumberTextField",
                "DigitView",
                "CustomList",
            ]
        ),
        .testTarget(
            name: "SwiftUIToolkitTests",
            dependencies: [
                "SwiftUIToolkit",
                "ViewControllerManager",
                "AsyncButtons",
                "UIKitSwiftUIViews",
                "FileManagerPersistence",
                "PageableDataManager",
                "CachedSounds",
                "SwipeActions",
                "SwiftUIColorPicker",
                "NumberTextField",
                "DigitView",
                "CustomList",
            ]),
    ]
)
