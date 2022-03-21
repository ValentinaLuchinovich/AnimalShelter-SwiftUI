//
//  TopView.swift
//  Animal shelter Swift UI
//
//  Created by Валентина Лучинович on 18.03.2022.
//

import SwiftUI

struct TopView: View {
    var owner: OwnerModel
    
    var body: some View {
        HStack(spacing: 8.0) {
            Image(owner.profileImage)
                .resizable()
                .frame(width: 70.0, height: 70.0)
                .clipShape(Circle())
            VStack(alignment: .leading, spacing: 4.0) {
                Text(owner.name)
                    .font(.title)
                HStack {
                    Text(owner.email)
                        .font(.subheadline)
                    Spacer()
                    Image(systemName: "heart")
                    Text(owner.likes)
                        .font(.subheadline)
                }
            }
        }
    }
}

struct TopView_Previews: PreviewProvider {
    static var previews: some View {
        TopView(owner: ownerResponse[2])
    }
}
