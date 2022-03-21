//
//  SwiftUIView.swift
//  Animal shelter Swift UI
//
//  Created by Валентина Лучинович on 18.03.2022.
//

import SwiftUI

let animalShulter = OwnerModel(id: 10, name: "Новый дом", profileImage: "logo", email: "newhoume@mail.ru", likes: "66.6K", text: "Приют где каждый найдёт себе новый дом, где окружат любовью и заботой")

let ownerResponse: [OwnerModel] = load("ownerModelData.json")
let animalResponse: [AnimalsModel] = load("animalsModelData.json")

func load<T: Decodable>(_ filename: String, as type: T.Type = T.self) -> T {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
        else {
            fatalError("Couldn't find \(filename) in main bundle.")
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}

