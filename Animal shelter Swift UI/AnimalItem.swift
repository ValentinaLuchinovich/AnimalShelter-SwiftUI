//
//  AnimalItem.swift
//  Animal shelter Swift UI
//
//  Created by Валентина Лучинович on 21.03.2022.
//

import SwiftUI

struct AnimalItem: View {
    var object: AnimalsModel
    
    var body: some View {
        VStack {
            Image(object.image)
                .resizable()
                .scaledToFill()
                .frame(width: 170, height: 170)
                .clipped()
                .cornerRadius(10)
        } .padding(.leading, 15)
    }
}

struct AnimalItem_Previews: PreviewProvider {
    static var previews: some View {
        AnimalItem(object: animalResponse[1])
    }
}
