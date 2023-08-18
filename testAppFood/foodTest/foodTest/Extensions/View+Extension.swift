//
//  View.swift
//  foodTest
//
//  Created by Borisov Nikita on 15.08.2023.
//

import SwiftUI

extension View {
    func navigationBarColor(_ backgroundColor: Color) -> some View {
        self.modifier(NavigationBarModifier(backgroundColor: backgroundColor))
    }
}

