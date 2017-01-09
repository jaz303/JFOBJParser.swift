import PackageDescription

let package = Package(
	name: "JFOBJParser",
	targets: [],
	dependencies: [
		.Package(
			url: "https://github.com/jaz303/JFLineReader.swift.git",
			majorVersion: 0
		)
	]
)