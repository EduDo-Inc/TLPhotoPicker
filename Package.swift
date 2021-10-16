// swift-tools-version:5.3

import PackageDescription

let package = Package(
  name: "TLPhotoPicker",
  platforms: [
    .iOS(.v10)
  ],
  products: [
    .library(
      name: "TLPhotoPicker",
      targets: ["TLPhotoPicker"]
    ),
  ],
  targets: [
    .target(
      name: "TLPhotoPicker",
      path: "TLPhotoPicker",
      exclude: [
        "Classes/TLBundle.swift",
        "TLPhotoPicker/Info.plist",
      ],
      resources: [
        .process("TLPhotoPicker/Classes/TLCollectionTableViewCell.xib"),
        .process("TLPhotoPicker/Classes/TLPhotoCollectionViewCell.xib"),
        .process("TLPhotoPicker/Classes/TLPhotosPickerViewController.xib"),
        .process("TLPhotoPicker/Assets.xcassets"),
        .process("TLPhotoPicker/TLPhotoPickerController.bundle"),
      ]
    )
  ]
)
