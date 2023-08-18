//
//  FirstLineCarouselVIEW.swift
//  foodTest
//
//  Created by Borisov Nikita on 18.08.2023.
//

import SwiftUI

struct FirstLineCarouselView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(0..<3) { _ in
                    FirstRowView()
                }
            }
            .padding([.leading, .top])
            .padding(.bottom,5)
        }
    }
}

struct FirstLineCarouselVIEW_Previews: PreviewProvider {
    static var previews: some View {
        FirstLineCarouselView()
    }
}
