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
var Уфа = "Уфа"
var Restaurant = "Restaurant"
var RestaurantClab = "Restaurant - Club"
var RestaurantComp = "Restaurant - Complex"

var Restarant = [
    Menu(name: "Ogonёk Grill&Bar", location: Уфа, type: Restaurant, image: "ogonek.jpg", isVisited: false),
    Menu(name: "Elu", location: Уфа, type: Restaurant, image: "elu.jpg", isVisited: false),
    Menu(name: "Bonsai", location: Уфа, type: Restaurant, image: "bonsai.jpg", isVisited: false),
    Menu(name: "Dastarhan", location: Уфа, type: Restaurant, image: "dastarhan.jpg", isVisited: false),
    Menu(name: "Indokitay", location: Уфа, type: Restaurant, image: "indokitay.jpg", isVisited: false),
    Menu(name: "X.O", location: Уфа, type: RestaurantClab, image: "x.o.jpg", isVisited: false),
    Menu(name: "Balkan Grill", location: Уфа, type: Restaurant, image: "balkan.jpg", isVisited: false),
    Menu(name: "Respublica", location: Уфа, type: Restaurant, image: "respublika.jpg", isVisited: false),
    Menu(name: "Speak Easy", location: Уфа, type: RestaurantComp, image: "speakeasy.jpg", isVisited: false),
    Menu(name: "Morris Pub", location: Уфа, type: Restaurant, image: "morris.jpg", isVisited: false),
    Menu(name: "Tasty Stories", location: Уфа, type: Restaurant, image: "istorii.jpg", isVisited: false),
    Menu(name: "Classic", location: Уфа, type: Restaurant, image: "klassik.jpg", isVisited: false),
    Menu(name: "Love&Life", location: Уфа, type: Restaurant, image: "love.jpg", isVisited: false),
    Menu(name: "Shock", location: Уфа, type: Restaurant, image: "shok.jpg", isVisited: false),
    Menu(name: "Bochka", location: Уфа, type: Restaurant, image: "bochka.jpg", isVisited: false)
]
