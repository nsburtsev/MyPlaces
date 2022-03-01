//
//  PlaceModel.swift
//  MyPlaces
//
//  Created by Нюргун on 26.02.2022.
//  Copyright © 2022 Нюргун. All rights reserved.
//

import UIKit

struct Place {
    
    var name: String
    var location: String? /*опционал для необязательных для заполнения полей*/
    var type: String?
    var image: UIImage?
    var restaurantImage: String?
    
    static let restaurantNames = [
        "Burger Heroes",
        "Kitchen",
        "Bonsai",
        "Дастархан",
        "Индокитай",
        "X.O",
        "Балкан Гриль",
        "Sherlock Holmes",
        "Speak Easy",
        "Morris Pub",
        "Вкусные истории",
        "Классик",
        "Love&Life",
        "Шок",
        "Бочка"
    ]
    
    static func getPlaces() -> [Place] {
        
        var places = [Place]()
        
        for place in restaurantNames {
            places.append(Place(name: place, location: "Уфа", type: "Ресторан", image: nil, restaurantImage: place))
        }
        
        return places
    }
    
}
