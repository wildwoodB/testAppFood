//
//  HomePageModel.swift
//  foodTest
//
//  Created by Borisov Nikita on 16.08.2023.
//

import Foundation
import UIKit

struct HomePage: Identifiable {
    
    let id = UUID().uuidString
    let thirdRowinfo: [ThirdLineInfo]
    let recRowInfo: [RecomendationLineInfo]
}

struct ThirdLineInfo: Identifiable {
    let id = UUID().uuidString
    let thirdRowTitiles: String
    var uiColor: UIColor
    let image: String
}

struct RecomendationLineInfo: Identifiable {
    let id = UUID().uuidString
    let price: Double
    let discountPrice: Double
    let discount: Bool
    let recRowDiscauntTitiles: String
    let image: String
}
