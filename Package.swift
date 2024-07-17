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
                .define("THREAD_SAFE"),
                .define("LV_CONF_MICROCONTROLLER"),
                .define("LV_USE_SMALL_DISPLAY", to: "0"),
                .define("LV_USE_TINY_TTF", to: "0"),
                .define("LV_USE_GPU", to: "1"),
                .define("LV_USE_PERF_MONITOR", to: "0"),
                .define("LV_USE_LOG", to: "1"),
                .define("LV_MEMCPY_MEMSET_STD", to: "1"),
                .define("LV_USE_ASSERT_NULL", to: "0"),
                .define("LV_USE_ASSERT_MALLOC", to: "0"),
                .define("LV_TICK_CUSTOM", to: "1"),
                .define("LV_COLOR_DEPTH", to: "16"),
                .define("LV_COLOR_16_SWAP", to: "0"),
            ]
        )
    ]
)
