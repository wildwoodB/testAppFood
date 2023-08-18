//
//  ThirdLineCarouselView.swift
//  foodTest
//
//  Created by Borisov Nikita on 18.08.2023.
//

import SwiftUI

struct ThirdLineCarouselView: View {
    
    @EnvironmentObject private var vm: HomePageViewModel
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(vm.homePageData.flatMap({$0.thirdRowinfo})) { data in
                    ThirdRowView(data: data)
                }
            }
            .padding([.leading, .bottom])
            .padding(.top, 6)
        }
    }
}

struct ThirdLineCarouselView_Previews: PreviewProvider {
    static var previews: some View {
        ThirdLineCarouselView()
            .environmentObject(dev.homeVM)
    }
}
