//
//  Item.swift
//  photosAnimation
//
//  Created by Alexandr Gutul on 10/01/2026.
//

import SwiftUI
import UIKit

struct Item: Identifiable, Hashable {
    var id: String = UUID().uuidString
    var title: String
    var image: UIImage?
    var previewImage: UIImage?
    var appeared: Bool = false
}

var sampleItems: [Item] = [
    .init(title: "test image", image: UIImage(named: "IMG_1213")),
    .init(title: "test image", image: UIImage(named: "IMG_1214")),
    .init(title: "test image", image: UIImage(named: "IMG_1215")),
    .init(title: "test image", image: UIImage(named: "IMG_1216")),
    .init(title: "test image", image: UIImage(named: "IMG_1217")),
    .init(title: "test image", image: UIImage(named: "IMG_1218")),
    .init(title: "test image", image: UIImage(named: "IMG_1213")),
    .init(title: "test image", image: UIImage(named: "IMG_1214")),
    .init(title: "test image", image: UIImage(named: "IMG_1215")),
    .init(title: "test image", image: UIImage(named: "IMG_1216")),
    .init(title: "test image", image: UIImage(named: "IMG_1217")),
    .init(title: "test image", image: UIImage(named: "IMG_1218")),
    .init(title: "test image", image: UIImage(named: "IMG_1213")),
    .init(title: "test image", image: UIImage(named: "IMG_1214")),
    .init(title: "test image", image: UIImage(named: "IMG_1215")),
    .init(title: "test image", image: UIImage(named: "IMG_1216")),
    .init(title: "test image", image: UIImage(named: "IMG_1217")),
    .init(title: "test image", image: UIImage(named: "IMG_1218")),
    .init(title: "test image", image: UIImage(named: "IMG_1213")),
    .init(title: "test image", image: UIImage(named: "IMG_1214")),
    .init(title: "test image", image: UIImage(named: "IMG_1215")),
    .init(title: "test image", image: UIImage(named: "IMG_1216")),
    .init(title: "test image", image: UIImage(named: "IMG_1217")),
    .init(title: "test image", image: UIImage(named: "IMG_1218")),
    .init(title: "test image", image: UIImage(named: "IMG_1213")),
    .init(title: "test image", image: UIImage(named: "IMG_1214")),
    .init(title: "test image", image: UIImage(named: "IMG_1215")),
    .init(title: "test image", image: UIImage(named: "IMG_1216")),
    .init(title: "test image", image: UIImage(named: "IMG_1217")),
    .init(title: "test image", image: UIImage(named: "IMG_1218")),
    .init(title: "test image", image: UIImage(named: "IMG_1213")),
    .init(title: "test image", image: UIImage(named: "IMG_1214")),
    .init(title: "test image", image: UIImage(named: "IMG_1215")),
    .init(title: "test image", image: UIImage(named: "IMG_1216")),
    .init(title: "test image", image: UIImage(named: "IMG_1217")),
    .init(title: "test image", image: UIImage(named: "IMG_1218")),
    .init(title: "test image", image: UIImage(named: "IMG_1213")),
    .init(title: "test image", image: UIImage(named: "IMG_1214")),
    .init(title: "test image", image: UIImage(named: "IMG_1215")),
    .init(title: "test image", image: UIImage(named: "IMG_1216")),
    .init(title: "test image", image: UIImage(named: "IMG_1217")),
    .init(title: "test image", image: UIImage(named: "IMG_1218")),
    .init(title: "test image", image: UIImage(named: "IMG_1213")),
    .init(title: "test image", image: UIImage(named: "IMG_1214")),
    .init(title: "test image", image: UIImage(named: "IMG_1215")),
    .init(title: "test image", image: UIImage(named: "IMG_1216")),
    .init(title: "test image", image: UIImage(named: "IMG_1217")),
    .init(title: "test image", image: UIImage(named: "IMG_1218")),
    .init(title: "test image", image: UIImage(named: "IMG_1213")),
    .init(title: "test image", image: UIImage(named: "IMG_1214")),
    .init(title: "test image", image: UIImage(named: "IMG_1215")),
    .init(title: "test image", image: UIImage(named: "IMG_1216")),
    .init(title: "test image", image: UIImage(named: "IMG_1217")),
    .init(title: "test image", image: UIImage(named: "IMG_1218")),
    .init(title: "test image", image: UIImage(named: "IMG_1213")),
    .init(title: "test image", image: UIImage(named: "IMG_1214")),
    .init(title: "test image", image: UIImage(named: "IMG_1215")),
    .init(title: "test image", image: UIImage(named: "IMG_1216")),
    .init(title: "test image", image: UIImage(named: "IMG_1217")),
    .init(title: "test image", image: UIImage(named: "IMG_1218")),
    .init(title: "test image", image: UIImage(named: "IMG_1213")),
    .init(title: "test image", image: UIImage(named: "IMG_1214")),
    .init(title: "test image", image: UIImage(named: "IMG_1215")),
    .init(title: "test image", image: UIImage(named: "IMG_1216")),
    .init(title: "test image", image: UIImage(named: "IMG_1217")),
    .init(title: "test image", image: UIImage(named: "IMG_1218")),
    .init(title: "test image", image: UIImage(named: "IMG_1213")),
    .init(title: "test image", image: UIImage(named: "IMG_1214")),
    .init(title: "test image", image: UIImage(named: "IMG_1215")),
    .init(title: "test image", image: UIImage(named: "IMG_1216")),
    .init(title: "test image", image: UIImage(named: "IMG_1217")),
    .init(title: "test image", image: UIImage(named: "IMG_1218")),
]
