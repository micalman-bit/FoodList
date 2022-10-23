//
//  FoodListApp.swift
//  FoodList
//
//  Created by Andrey Samchenko on 21.10.2022.
//

import SwiftUI

@main
struct FoodListApp: App {
    @StateObject var listViewModel: ListViewModel = ListViewModel()
    
    var body: some Scene {
        WindowGroup {
//            NavigationView {
                ContentView()
//            }
//            .navigationViewStyle(StackNavigationViewStyle())
            .environmentObject(listViewModel)
        }
    }
}
