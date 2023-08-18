//
//  FirstRowView.swift
//  foodTest
//
//  Created by Borisov Nikita on 16.08.2023.
//

import SwiftUI

struct FirstRowView: View {
    var body: some View {
        Image("line1")
            .resizable()
            .cornerRadius(15)
            .frame(width: 330, height: 170)
            .foregroundColor(Color.green.opacity(0.2))
            .shadow(color: Color.black.opacity(0.3), radius: 3, x: 0, y: 0)
    }
}

struct FirstRowView_Previews: PreviewProvider {
    static var previews: some View {
        FirstRowView()
    }
}
