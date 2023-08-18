//
//  HomePageViewModel.swift
//  foodTest
//
//  Created by Borisov Nikita on 16.08.2023.
//

import Foundation
import SwiftUI

class HomePageViewModel: ObservableObject {
    
    private(set) var homePageData: [HomePage] = [
        HomePage(
            thirdRowinfo: [
                ThirdLineInfo(thirdRowTitiles: "Абонемент на кофе", uiColor: #colorLiteral(red: 0.6039215686, green: 0.9176470588, blue: 0.8980392157, alpha: 1), image: "cup"),
                ThirdLineInfo(thirdRowTitiles: "Мои скидки", uiColor: #colorLiteral(red: 1, green: 0.8941176471, blue: 0.9450980392, alpha: 1), image: "sell"),
                ThirdLineInfo(thirdRowTitiles: "Карта в подарок", uiColor: #colorLiteral(red: 0.8274509804, green: 0.9529411765, blue: 0.9058823529, alpha: 1), image: "ticket"),
                ThirdLineInfo(thirdRowTitiles: "Доставим за 1 час", uiColor: #colorLiteral(red: 0.8274509804, green: 0.9568627451, blue: 1, alpha: 1), image: "mapPlace")
                ],
            recRowInfo: [
                RecomendationLineInfo(price: 99.9, discountPrice: 20.99, discount: true, recRowDiscauntTitiles: "Супер цена", image: "i1"),
                RecomendationLineInfo(price: 500, discountPrice: 99.9, discount: false, recRowDiscauntTitiles: "Удар по ценам", image: "i2"),
                RecomendationLineInfo(price: 169, discountPrice: 120.3, discount: true, recRowDiscauntTitiles: "Лучшая цена", image: "i3"),
                RecomendationLineInfo(price: 550, discountPrice: 140.50 , discount: false, recRowDiscauntTitiles: "Супер скидка", image: "i4")
            ])
    ]
    
}
