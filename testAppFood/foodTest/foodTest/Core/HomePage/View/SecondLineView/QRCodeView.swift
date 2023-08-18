//
//  QRCodeView.swift
//  foodTest
//
//  Created by Borisov Nikita on 18.08.2023.
//

import SwiftUI

struct QRCodeView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 15)
                .fill(.white)
                .frame(width: 80, height: 80)
            Rectangle()
                .frame(width: 60, height: 60)
        }
    }
}

struct QRCodeView_Previews: PreviewProvider {
    static var previews: some View {
        QRCodeView()
    }
}
