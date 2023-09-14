//
//  FloristModel.swift
//  Demo
//
//  Created by Ramkrishna on 26/06/23.
//

import Foundation

struct Card: Hashable {
    var img: String
    var title: String
    var price: String
    var favouritesCount: Int
}

extension Card {
    static let sampleData: [Card] =
    [
        Card(img: "flower", title: "Spark", price: "$190", favouritesCount: 3),
        Card(img: "impression", title: "Impression", price: "$100", favouritesCount: 4),
        Card(img: "authentic", title: "Authentic", price: "$80", favouritesCount: 5),
        Card(img: "magic", title: "Magic", price: "$190", favouritesCount: 3),
        Card(img: "white", title: "White", price: "$290", favouritesCount: 4),
        Card(img: "soft", title: "Soft", price: "$390", favouritesCount: 5),
        Card(img: "flower", title: "Spark", price: "$490", favouritesCount: 3),
        Card(img: "impression", title: "Impression", price: "$590", favouritesCount: 4),
        Card(img: "authentic", title: "Authentic", price: "$690", favouritesCount: 5),
        Card(img: "magic", title: "Magic", price: "$790", favouritesCount: 3),
        Card(img: "white", title: "White", price: "$890", favouritesCount: 4),
        Card(img: "soft", title: "Soft", price: "$990", favouritesCount: 5)
    ]
}
