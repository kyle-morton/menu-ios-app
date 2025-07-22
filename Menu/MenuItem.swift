//
//  MenuItem.swift
//  Menu
//
//  Created by Kyle Morton on 7/21/25.
//

import Foundation


struct MenuItem : Identifiable {
    // struct==class (can have props and behavior)
    // protocol==interface (contract of what a struct must conform to)
    
    var id: UUID = UUID() // give it a random uuid on create (so it's not required in the constructor
    var name:String
    var price:String
    var imageName:String
}

//var firstItem = MenuItem(name: "Onigiri", price: "$1.99", imageName: "onigiri")
//var secondItem = MenuItem(name: "Meguro Sushi", price: "$4.99", imageName: "meguro-sushi")
