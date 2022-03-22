//
//  AnimalRow.swift
//  Animal shelter Swift UI
//
//  Created by Валентина Лучинович on 21.03.2022.
//

import SwiftUI

struct AnimalRow: View {
    
    var animalType: String
    var animals: [AnimalsModel]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10.0) {
            Text(self.animalType).font(.headline)
                .padding(.leading, 15)
                .padding(.top, 5)
            ScrollView(.horizontal) {
                HStack(alignment: .center, spacing: 0) {
                    ForEach(self.animals) { animal in
                        NavigationLink(destination: DetailScreen(animal: animal)) {
                            AnimalItem(object: animal)
                        }
                        
                    }
                }
            } .frame(height: 190)
        }
    }
}

struct AnimalRow_Previews: PreviewProvider {
    static var previews: some View {
        AnimalRow(animalType: animalResponse[0].category.rawValue, animals: Array(animalResponse.prefix(4)))
    }
}
