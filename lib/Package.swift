// swift-tools-version: 5.7

import PackageDescription

let package = Package(
    name: "WidgeteerDemo",
    platforms: [.iOS(.v16), .macOS(.v13)],
    products: [
        .library(
            name: "WidgeteerDemo",
            type: .dynamic,
            targets: ["WidgeteerDemo"]
        ),
    ],
    dependencies: [
        .package(path: "../../Widgeteer/Widgeteer")
    ],
    targets: [
        .target(
            name: "WidgeteerDemo",
            dependencies: [
                "Widgeteer"
            ]
        )
    ]
)
