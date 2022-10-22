//
//  ContentView.swift
//  FoodList
//
//  Created by Andrey Samchenko on 21.10.2022.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("shouldShowOnboarding") var shouldShowOnboarding : Bool = true
    var body: some View {
        NavigationView {
            VStack {
                Text("You are in the main app!")
            }
            .navigationTitle("Home")
        }
        .fullScreenCover(isPresented: $shouldShowOnboarding, content: {
            OnboardingView(shouldShowOnboarding: $shouldShowOnboarding)
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
