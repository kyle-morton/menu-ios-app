//
//  DataService.swift
//  Menu
//
//  Created by Kyle Morton on 7/22/25.
//

import Foundation

public struct DataService {
    func getData() -> [MenuItem] {
        return [MenuItem(name: "Onigiri", price: "1.99", imageName: "onigiri"),
                MenuItem(name: "Meguro Sushi", price: "5.99", imageName: "meguro-sushi"),
                MenuItem(name: "Tako Sushi", price: "4.99", imageName: "tako-sushi"),
                MenuItem(name: "Avocado Maki", price: "2.99", imageName: "avocado-maki"),
                MenuItem(name: "Tobiko Spicy Maki", price: "4.99", imageName: "tobiko-spicy-maki"),
                MenuItem(name: "Salmon Sushi", price: "4.99", imageName: "salmon-sushi"),
                MenuItem(name: "Hamachi Sushi", price: "6.99", imageName: "hamachi-sushi"),
                MenuItem(name: "Kani Sushi", price: "3.99", imageName: "kani-sushi"),
                MenuItem(name: "Tamago Sushi", price: "3.99", imageName: "tamago-sushi"),
                MenuItem(name: "California Roll", price: "3.99", imageName: "california-roll"),
                MenuItem(name: "Shrimp Sushi", price: "3.99", imageName: "shrimp-sushi"),
                MenuItem(name: "Ikura Sushi", price: "5.99", imageName: "ikura-sushi")]
    }

}
