//
//  ThirdRowView.swift
//  foodTest
//
//  Created by Borisov Nikita on 16.08.2023.
//

import SwiftUI

struct ThirdRowView: View {
    
    let data: ThirdLineInfo
    
    var body: some View {
        ZStack {
            ZStack {
                RoundedRectangle(cornerRadius: 15)
                    .foregroundColor(Color(data.uiColor))
                    .shadow(color: Color.black.opacity(0.25), radius: 4, x: 0, y: 0)
                
                VStack {
                    Text(data.thirdRowTitiles)
                        .font(.system(size: 13, weight: .bold, design: .rounded))
                        .multilineTextAlignment(.leading)
                        .lineLimit(2)
                        .padding(.top,10)
                    Spacer()
                }
                
                Image(data.image)
                    .resizable()
                    .cornerRadius(15)
                    .offset(x: 10, y: 27.5)
                    .frame(width: 80, height: 65)
            }
        }
        .frame(width: 100, height: 120)
    }

}


struct ThirdRowView_Previews: PreviewProvider {
    static var previews: some View {
        ThirdRowView(data: dev.homePageData[0].thirdRowinfo[0])
            .previewLayout(.sizeThatFits)
            .environmentObject(dev.homeVM)
            
    }
}
