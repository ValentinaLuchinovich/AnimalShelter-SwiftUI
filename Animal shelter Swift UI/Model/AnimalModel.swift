//
//  AnimalModel.swift
//  Animal shelter Swift UI
//
//  Created by Валентина Лучинович on 21.03.2022.
//

import SwiftUI
import Foundation

enum AnimalType: String, CaseIterable, Codable, Hashable{
    case courses = "Собаки"
    case vebinars = "Кошки"
}

struct AnimalsModel: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var image: String
    var category: AnimalType
    var description: String
    var days: Int
    var age: Int
}


