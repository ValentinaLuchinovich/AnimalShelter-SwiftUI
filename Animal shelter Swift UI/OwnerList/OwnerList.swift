//
//  ContentView.swift
//  Animal shelter Swift UI
//
//  Created by Валентина Лучинович on 18.03.2022.
//

import SwiftUI

struct OwnerList: View {
    var body: some View {
        NavigationView {
            List(ownerResponse) { user in
               Cell(owner: user)
            }
            .listStyle(.inset)
            .navigationTitle("Хозяева")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        OwnerList()
    }
}
