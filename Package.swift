// swift-tools-version:5.3

import PackageDescription

let package = Package(
  name: "AssemblyKit",
  
  products: [
    .library   (name: "AssemblyKit",    targets: [ "Wasmer"]),
  ],
  
  targets: [
    .systemLibrary(name: "CWasmer", pkgConfig: "wasmer"),
    .target(name: "Wasmer", dependencies: [ "CWasmer" ],
            exclude: [ "README.md", "CExtensions/README.md" ]),
  ]
)
