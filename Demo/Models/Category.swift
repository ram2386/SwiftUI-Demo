//
//  Category.swift
//  Demo
//
//  Created by Ramkrishna on 26/06/23.
//

import Foundation

struct Category: Hashable {
    var name: String
    var icon: String
}

extension Category {
    static let sampleData: [Category] =
    [
        Category(name: "All", icon: ""),
        Category(name: "Bouquet", icon: "flowerIcon"),
        Category(name: "Aisle", icon: "aisleIcon"),
        Category(name: "Table", icon: "tableIcon"),
        Category(name: "Accessories", icon: "accessoriesIcon"),
        Category(name: "Packet", icon: "flowerIcon")
    ]
}
