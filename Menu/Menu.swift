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
var Restaran = "Restaran"
var RestaranKlub = "Restaran - Klub"
var RestaranKom = "Restaranniy - Kompleks"

var Restarant = [
    Menu(name: "Ogonёk Grill&Bar", location: Tashkent, type: Restaran, image: "ogonek.jpg", isVisited: false),
    Menu(name: "Елу", location: Tashkent, type: Restaran, image: "elu.jpg", isVisited: false),
    Menu(name: "Bonsai", location: Tashkent, type: Restaran, image: "bonsai.jpg", isVisited: false),
    Menu(name: "Дастархан", location: Tashkent, type: Restaran, image: "dastarhan.jpg", isVisited: false),
    Menu(name: "Индокитай", location: Tashkent, type: Restaran, image: "indokitay.jpg", isVisited: false),
    Menu(name: "X.O", location: Tashkent, type: RestaranKlub, image: "x.o.jpg", isVisited: false),
    Menu(name: "Балкан Гриль", location: Tashkent, type: Restaran, image: "balkan.jpg", isVisited: false),
    Menu(name: "Respublica", location: Tashkent, type: Restaran, image: "respublika.jpg", isVisited: false),
    Menu(name: "Speak Easy", location: Tashkent, type: RestaranKom, image: "speakeasy.jpg", isVisited: false),
    Menu(name: "Morris Pub", location: Tashkent, type: Restaran, image: "morris.jpg", isVisited: false),
    Menu(name: "Вкусные истории", location: Tashkent, type: Restaran, image: "istorii.jpg", isVisited: false),
    Menu(name: "Классик", location: Tashkent, type: Restaran, image: "klassik.jpg", isVisited: false),
    Menu(name: "Love&Life", location: Tashkent, type: Restaran, image: "love.jpg", isVisited: false),
    Menu(name: "Шок", location: Tashkent, type: Restaran, image: "shok.jpg", isVisited: false),
    Menu(name: "Бочка", location: Tashkent, type: Restaran, image: "bochka.jpg", isVisited: false)
]
