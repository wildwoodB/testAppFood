//
//  RecomendationRowView.swift
//  foodTest
//
//  Created by Borisov Nikita on 17.08.2023.
//

import SwiftUI

struct RecomendationRowView: View {
    
    let discount: Bool
    let data: RecomendationLineInfo
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .fill(.white)
            VStack {
                Image(data.image)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 70, height: 50)
                    .padding()
                HStack {
                    VStack(alignment: .leading, spacing: 0) {
                        HStack {
                            Text(data.discountPrice.asCurrencyWith2Decimals())
                                .font(.system(size: 12, weight: .bold, design: .rounded))
                                .lineLimit(1)
                            
                            Image("priceInfo")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 17, height: 25)
                        }
                        if discount {
                            Text(data.price.asCurrencyWith2Decimals())
                                .font(.caption2)
                                .foregroundColor(.secondary)
                                .strikethrough(true)
                        }
                    }
                    Button {
                        //
                    } label: {
                        AddToCartButtonView()
                    }
                }
                .padding(.bottom, -15)
                .padding(.horizontal, 7)
            }
            
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .fill(.red.opacity(0.5))
                    .frame(width: 90, height: 20)
                Text(data.recRowDiscauntTitiles)
                    .font(.system(size: 9, weight: .semibold, design: .rounded))
                    .foregroundColor(.white)
                    .padding(.leading, 6)
            }
            .offset(x: -20, y: -65)
            
        }
        .frame(width: 120, height: 150)
        .cornerRadius(20)
        .clipped()
        .padding(5)
        .shadow(color: .black.opacity(0.2), radius: 3)
        
    }
}

struct RecomendationRowView_Previews: PreviewProvider {
    static var previews: some View {
        RecomendationRowView(discount: true, data: dev.homePageData[0].recRowInfo[2])
            .previewLayout(.sizeThatFits)
    }
}



