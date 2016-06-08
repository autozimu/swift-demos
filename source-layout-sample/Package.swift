import PackageDescription

let package = Package(
   name: "sample",
   targets: [
       Target(name: "Foo"),
       Target(name: "sample", dependencies: [.Target(name: "Foo")])
   ])
