//
//  StoriesCarousel.swift
//  foodTest
//
//  Created by Borisov Nikita on 18.08.2023.
//

import SwiftUI

struct StoriesCarouselView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 0) {
                ForEach(0..<5) { _ in
                    StoriesCircle()
                }
            }
        }
    }
}

struct StoriesCarousel_Previews: PreviewProvider {
    static var previews: some View {
        StoriesCarouselView()
    }
}
