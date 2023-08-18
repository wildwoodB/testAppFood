//
//  TabBarView.swift
//  foodTest
//
//  Created by Borisov Nikita on 17.08.2023.
//

import SwiftUI

struct TabBarView: View {
    
    @State var selectedTab = 0
    
    var body: some View {
        TabView(selection: $selectedTab) {
            NavigationView {
                HomePageView()
                    .preferredColorScheme(.light)
                    .navigationBarColor(.white)
            }
            .tabItem {
                Image(systemName: "house")
                Text("Главная")
            }
            .tag(0)
            
            Text("Каталог")
                .tabItem {
                    Image(systemName: "square.grid.2x2")
                    Text("Каталог")
                }
                .tag(1)
            
            Text("Корзина")
                .tabItem {
                    Image(systemName: "cart")
                    Text("Корзина")
                }
                .tag(2)
            
            Text("Профиль")
                .tabItem {
                    Image(systemName: "person")
                    Text("Профиль")
                }
                .tag(3)
        }
        .accentColor(.green)
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
            .environmentObject(dev.homeVM)
    }
}



