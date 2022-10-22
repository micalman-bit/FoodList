//
//  Onboarding.swift
//  FoodList
//
//  Created by Andrey Samchenko on 22.10.2022.
//

import SwiftUI

//MARK: Onboarding
struct OnboardingView: View {
    @Binding var shouldShowOnboarding: Bool
    var body: some View {
        TabView {
            PageOnboardingView(
                title: "first",
                subTitle: "first subtitle or description",
                showDismissButton: false,
                shouldShowOnboarding: $shouldShowOnboarding
            )
            PageOnboardingView(
                title: "second",
                subTitle: "second subtitle",
                showDismissButton: false,
                shouldShowOnboarding: $shouldShowOnboarding
            )
            PageOnboardingView(
                title: "three",
                subTitle: "three subtitle",
                showDismissButton: false,
                shouldShowOnboarding: $shouldShowOnboarding
            )
            PageOnboardingView(
                title: "four",
                subTitle: "four subtitle",
                showDismissButton: true,
                shouldShowOnboarding: $shouldShowOnboarding
            )
        }
         .tabViewStyle(PageTabViewStyle())
    }
}

struct PageOnboardingView: View {
    let title: String
    let subTitle: String
    let showDismissButton: Bool
    @Binding var shouldShowOnboarding: Bool
    
    var body: some View {
        VStack {
            LottieView(fileName: LottieFileName.onboardingFirst)
                .frame(width: 250, height: 250)
            Text(title)
                .font(.system(size: 42))
                .padding()
            Text(subTitle)
                .font(.system(size: 30))
                .foregroundColor(Color(.secondaryLabel))
                .padding()
            
            if showDismissButton {
                Button(action: {
                    shouldShowOnboarding.toggle()
                }, label: {
                    Text("Get started")
                        .bold()
                        .foregroundColor(Color.white)
                        .frame(width: 200, height: 50)
                        .background(Color.green)
                        .cornerRadius(6)
                })
            }
        }
    }
}
