//
//  ToolBarItemView.swift
//  foodTest
//
//  Created by Borisov Nikita on 18.08.2023.
//

import SwiftUI

struct ToolBarItemView: View {
    var body: some View {
        HStack {
            ZStack {
                RoundedRectangle(cornerRadius: 20)
                    .foregroundColor(.clear)
                    .frame(width: 320, height: 40)
                    .overlay(
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(Color.gray.opacity(0.5), lineWidth: 1)
                    )
                    .padding(.leading)
                    .padding(.bottom, 6)
                HStack(spacing: 5) {
                    Image("mapPlace")
                        .resizable()
                        .frame(width: 17, height: 17)
                    Text(Constants.Text.navigationBarText)
                        .font(.system(size: 14))
                        
                }
                .offset(x: 0, y: -2)
            }
            Spacer()
            Button {
                
            } label: {
                Image(systemName: "text.justify")
                    .font(.headline)
                    .foregroundColor(Color.green)
                    .padding(.bottom, 7)
            }
        }
    }
}

struct ToolBarItemView_Previews: PreviewProvider {
    static var previews: some View {
        ToolBarItemView()
    }
}
