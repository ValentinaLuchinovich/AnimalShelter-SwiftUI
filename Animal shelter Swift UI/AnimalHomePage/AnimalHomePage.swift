//
//  SwiftUIView.swift
//  Animal shelter Swift UI
//
//  Created by Валентина Лучинович on 21.03.2022.
//

import SwiftUI

struct AnimalHomePage: View {
    
    var animals: [String: [AnimalsModel]] {
        .init(grouping: animalResponse, by: {$0.category.rawValue})
    }
    
    var body: some View {
        NavigationView {
            List {
                Cell(owner: animalShulter).listRowInsets(EdgeInsets())
                ForEach(self.animals.keys.sorted(), id: \.self) { key in
                    AnimalRow(animalType: key, animals: self.animals[key]!)
                }.listRowInsets(EdgeInsets())
                
                NavigationLink(destination: OwnerList()) {
                    Text("Истории новых хозяев")
                }
            }
            .listStyle(.inset)
            .navigationTitle("Приют")
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        AnimalHomePage()
    }
}
