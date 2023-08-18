//
//  StoriesCircle.swift
//  foodTest
//
//  Created by Borisov Nikita on 18.08.2023.
//

import SwiftUI

struct StoriesCircle: View {
    var body: some View {
        VStack {
            Circle()
                .frame(width: 70,height: 60)
                .foregroundColor(.orange.opacity(0.2))
                .overlay(
                    Circle()
                        .stroke(Color.green, lineWidth: 2)
                )
            
            Text(Constants.Text.storiesText)
                .lineLimit(2)
                .font(.system(size: 11))
                .frame(width: 70, height: 30)
            
        }
        .frame(width: 70, height: 95)
        .padding([.leading,.top])
    }
}

struct StoriesCircle_Previews: PreviewProvider {
    static var previews: some View {
        StoriesCircle()
    }
}
