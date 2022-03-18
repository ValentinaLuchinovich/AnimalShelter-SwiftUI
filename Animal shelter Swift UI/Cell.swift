//
//  Cell.swift
//  Animal shelter Swift UI
//
//  Created by Валентина Лучинович on 18.03.2022.
//

import SwiftUI

struct Cell: View {
    
    var owner: OwnerModel
    
    var body: some View {
        VStack(spacing: 16.0) {
            TopView(owner: owner)
            Text(owner.text)
                .lineLimit(nil)
        } .padding()
    }
}

struct Cell_Previews: PreviewProvider {
    static var previews: some View {
        Cell(owner: ownerResponse[0])
    }
}
