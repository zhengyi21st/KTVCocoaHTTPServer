// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "KTVCocoaHTTPServer",
    products: [
        .library(
            name: "KTVCocoaHTTPServer",
            targets: ["KTVCocoaHTTPServer"]),
    ],
    dependencies: [
        .package(url: "https://github.com/robbiehanson/CocoaAsyncSocket", .upToNextMajor(from: "7.6.5")),
    ],
    targets: [
        .target(
            name: "KTVCocoaHTTPServer",
            dependencies: ["CocoaAsyncSocket"],
            path: "KTVCocoaHTTPServer",
            cSettings: [
                .headerSearchPath("Classes"),
                .headerSearchPath("Classes/Categories"),
                .headerSearchPath("Classes/Mime"),
                .headerSearchPath("Classes/Responses")
            ]
        )
    ]
)
