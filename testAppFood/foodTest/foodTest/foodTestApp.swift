//
//  foodTestApp.swift
//  foodTest
//
//  Created by Borisov Nikita on 15.08.2023.
//

import SwiftUI

@main
struct foodTestApp: App {
    
    @StateObject private var vm = HomePageViewModel()
    
    var body: some Scene {
        WindowGroup {
            TabBarView()
                .environmentObject(vm)
        }
    }
}
