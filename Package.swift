// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
	name: "CommandLineTool",
	products: [
		.library(name: "CommandLineTool", targets: ["CommandLineTool"])
	],
	dependencies: [
		.package(url: "https://github.com/YourMJK/swift-argument-parser", branch: "main")
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
