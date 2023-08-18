//
//  SecondRowView.swift
//  foodTest
//
//  Created by Borisov Nikita on 16.08.2023.
//

import SwiftUI

struct SecondRowView: View {
    var body: some View {
        ZStack(alignment: .topLeading) {
            RoundedRectangle(cornerRadius: 20)
                .fill(.green.opacity(0.8))
                .shadow(color: .black.opacity(0.5), radius: 3)
                .padding(.vertical, 5)
            .frame(height: 120)
            HStack(alignment: .bottom, spacing: 10) {
                Text("0")
                    .font(.system(size: 35, weight: .bold, design: .rounded))
                    .bold()
                Text(Constants.Text.bonusTitle)
                    .font(.system(size: 20, weight: .bold, design: .rounded))
                    .bold()
                    .offset(y: -5)
            }
            .offset(x: 20, y: 15)
        }
        .padding(.horizontal, 20)
        .overlay(QRCodeView().offset(x: -32), alignment: .trailing)
    }
}

struct SecondRowView_Previews: PreviewProvider {
    static var previews: some View {
        SecondRowView()
    }
}
