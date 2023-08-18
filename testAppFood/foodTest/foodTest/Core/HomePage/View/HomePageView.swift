//
//  HomePageView.swift
//  foodTest
//
//  Created by Borisov Nikita on 15.08.2023.
//

import SwiftUI

struct HomePageView: View {
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            StoriesCarouselView()
            FirstLineCarouselView()
            SecondRowView()
            ThirdLineCarouselView()
            RecomendationLineCarouselView(title: Constants.Text.recomendationTitle1)
            RecomendationLineCarouselView(title: Constants.Text.recomendationTitle2)
        }
        .toolbar {
            ToolbarItemGroup(placement: .navigationBarLeading) {
                ToolBarItemView()
            }
        }
    }
}

extension HomePageView {
}


struct HomePageView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            HomePageView()
                .environmentObject(dev.homeVM)
        }
    }
}
