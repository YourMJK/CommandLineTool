// swift-tools-version: 5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
	name: "CommandLineTool",
	products: [
		.library(name: "CommandLineTool", targets: ["CommandLineTool"])
	],
	dependencies: [
		.package(url: "https://github.com/YourMJK/swift-argument-parser", from: "1.0.0")
	],
	targets: [
		.target(
			name: "CommandLineTool",
			dependencies: [
				.product(name: "ArgumentParser", package: "swift-argument-parser"),
			]
		)
	]
)
