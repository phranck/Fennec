// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "Fennec",
    products: [
        .library(
            name: "Fennec",
            targets: ["Fennec"]
        ),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "Fennec",
            dependencies: ["CLVGL"]
        ),
        .target(
            name: "CLVGL",
            path: "Sources/CLVGL",
            publicHeadersPath: ".",
            cSettings: [
                .headerSearchPath("."),
                .define("LV_CONF_INCLUDE_SIMPLE"),
                .define("THREAD_SAFE")
            ]
        )
    ]
)
