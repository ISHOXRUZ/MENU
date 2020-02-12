//
//  Menu.swift
//  Menu
//
//  Created by Lucifer on 2/10/20.
//  Copyright © 2020 Lucifer. All rights reserved.
//

import Foundation

struct Menu {
    let name: String
    let location: String
    let type: String
    let image: String
    let isVisited: Bool
}
var Tashkent = "Tashkent"
var Restaurant = "Restaurant"
var RestaurantClab = "Restaurant - Club"
var RestaurantComp = "Restaurant - Complex"

var Restarant = [
    Menu(name: "Ogonёk Grill&Bar", location: Tashkent, type: Restaurant, image: "ogonek.jpg", isVisited: false),
    Menu(name: "Elu", location: Tashkent, type: Restaurant, image: "elu.jpg", isVisited: false),
    Menu(name: "Bonsai", location: Tashkent, type: Restaurant, image: "bonsai.jpg", isVisited: false),
    Menu(name: "Dastarhan", location: Tashkent, type: Restaurant, image: "dastarhan.jpg", isVisited: false),
    Menu(name: "Indokitay", location: Tashkent, type: Restaurant, image: "indokitay.jpg", isVisited: false),
    Menu(name: "X.O", location: Tashkent, type: RestaurantClab, image: "x.o.jpg", isVisited: false),
    Menu(name: "Balkan Grill", location: Tashkent, type: Restaurant, image: "balkan.jpg", isVisited: false),
    Menu(name: "Respublica", location: Tashkent, type: Restaurant, image: "respublika.jpg", isVisited: false),
    Menu(name: "Speak Easy", location: Tashkent, type: RestaurantComp, image: "speakeasy.jpg", isVisited: false),
    Menu(name: "Morris Pub", location: Tashkent, type: Restaurant, image: "morris.jpg", isVisited: false),
    Menu(name: "Tasty Stories", location: Tashkent, type: Restaurant, image: "istorii.jpg", isVisited: false),
    Menu(name: "Classic", location: Tashkent, type: Restaurant, image: "klassik.jpg", isVisited: false),
    Menu(name: "Love&Life", location: Tashkent, type: Restaurant, image: "love.jpg", isVisited: false),
    Menu(name: "Shock", location: Tashkent, type: Restaurant, image: "shok.jpg", isVisited: false),
    Menu(name: "Bochka", location: Tashkent, type: Restaurant, image: "bochka.jpg", isVisited: false)
]
