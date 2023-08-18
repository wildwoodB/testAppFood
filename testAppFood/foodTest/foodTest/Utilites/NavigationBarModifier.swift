//
//  NavigationBarModifier.swift
//  foodTest
//
//  Created by Borisov Nikita on 15.08.2023.
//

import SwiftUI

struct NavigationBarModifier: ViewModifier {
    var backgroundColor: Color
    
    init(backgroundColor: Color) {
        self.backgroundColor = backgroundColor
        let coloredAppearance = UINavigationBarAppearance()
        coloredAppearance.configureWithOpaqueBackground()
        coloredAppearance.backgroundColor = UIColor(backgroundColor)
        coloredAppearance.titleTextAttributes = [.foregroundColor: UIColor.white]
        coloredAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
        UINavigationBar.appearance().standardAppearance = coloredAppearance
        UINavigationBar.appearance().scrollEdgeAppearance = coloredAppearance
        UINavigationBar.appearance().compactAppearance = coloredAppearance
        UINavigationBar.appearance().tintColor = .white
    }
    
    func body(content: Content) -> some View {
        ZStack {
            content
                .background(backgroundColor)
                
            VStack {
                GeometryReader { geometry in
                    backgroundColor.frame(height: geometry.safeAreaInsets.top)
                        .edgesIgnoringSafeArea(.top)
                    Divider()
                        .background(Color.gray)
                        .frame(height: 1)
                }
            }
        }
    }
}



