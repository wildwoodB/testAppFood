//
//  AddToCartButtonView.swift
//  foodTest
//
//  Created by Borisov Nikita on 18.08.2023.
//

import SwiftUI

struct AddToCartButtonView: View {
    var body: some View {
        ZStack {
            Circle()
                .fill(.green)
            .frame(width: 30)
            Image(systemName: "cart.badge.plus")
                .scaledToFit()
                .frame(width: 13, height: 13)
                .foregroundColor(.white)
        }
    }
}

struct AddToCartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        AddToCartButtonView()
    }
}
