//
//  ownerModel.swift
//  Animal shelter Swift UI
//
//  Created by Валентина Лучинович on 18.03.2022.
//

import SwiftUI
import Foundation
import UIKit

struct OwnerModel: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var profileImage: String
    var email: String
    var likes: String
    var text: String
}
