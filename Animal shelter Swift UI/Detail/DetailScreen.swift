//
//  DetailScreen.swift
//  Animal shelter Swift UI
//
//  Created by Валентина Лучинович on 22.03.2022.
//

import SwiftUI

struct DetailScreen: View {
    
    var animal: AnimalsModel
    
    var body: some View {
        VStack(spacing: 16.0) {
            VStack(spacing: 20.0) {
                MainImage(animal: animal)
                Text(animal.name)
                    .lineLimit(nil)
                    .font(.title)
            }
            LittleStack(animal: animal)
            
            VStack(alignment: .leading, spacing: 12.0) {
                Text("Обо мне")
                    .font(.title)
                Text(animal.description)
            }
            Spacer()
        } .padding()
    }
}

struct LittleStack: View {
    var animal: AnimalsModel
    
    var body: some View {
        HStack(spacing: 30.0) {
            VStack {
                Text("\(animal.age)")
                    .font(.title)
                Text("Возраст")
                    .font(.body)
                    .fontWeight(.medium)
            }
            VStack {
                Text("\(animal.days)")
                    .font(.title)
                Text("Дней в приюте")
                    .font(.body)
                    .fontWeight(.medium)
            }
        }
    }
}

struct MainImage: View {
    
    var animal: AnimalsModel
    
    var body: some View {
        Image(animal.image)
            .resizable()
            .scaledToFill()
            .frame(width: 170, height: 170)
            .clipped()
            .cornerRadius(30)
            .overlay(
                RoundedRectangle(cornerRadius: 30)
                    .stroke(Color.yellow, lineWidth: 3)
            )
            .shadow(radius: 10)
    }
}

struct DetailScreen_Previews: PreviewProvider {
    static var previews: some View {
        DetailScreen(animal: animalResponse[1])
    }
}
