import PackageDescription

let package = Package(
    name: "summerit.backend",
    dependencies: [
        .Package(url: "https://github.com/IBM-Swift/Kitura.git", majorVersion: 0, minor: 20),
        .Package(url: "https://github.com/IBM-Swift/HeliumLogger", majorVersion: 0, minor: 9),
    ]
)
