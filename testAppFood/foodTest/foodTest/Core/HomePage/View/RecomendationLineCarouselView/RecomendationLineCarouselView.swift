//
//  RecomendationLineCarouselView.swift
//  foodTest
//
//  Created by Borisov Nikita on 18.08.2023.
//

import SwiftUI

struct RecomendationLineCarouselView: View {
    
    let title: String
    @EnvironmentObject private var vm: HomePageViewModel
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text(title)
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(.leading)
                Spacer()
            }
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: -5) {
                    ForEach(vm.homePageData.flatMap({$0.recRowInfo})) { recInfo in
                        RecomendationRowView(discount: recInfo.discount, data: recInfo)
                    }
                    .padding(.leading)
                }
            }
        }
    }
}

struct RecomendationLineCarouselView_Previews: PreviewProvider {
    static var previews: some View {
        RecomendationLineCarouselView(title: Constants.Text.recomendationTitle1)
            .environmentObject(dev.homeVM)
    }
}
