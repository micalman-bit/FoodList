//
//  LottieView.swift
//  FoodList
//
//  Created by Andrey Samchenko on 22.10.2022.
//

import SwiftUI
import Lottie

struct LottieView: UIViewRepresentable  {
    typealias UIViewType = UIView
    var fileName: String
    
    func makeUIView(context: UIViewRepresentableContext<LottieView >) -> UIView {
        let view = UIView(frame: .zero)
        let animationView = LottieAnimationView()
        let animation = Animation.named(fileName)
        animationView.animation = animation
        animationView.contentMode = .scaleAspectFill
        animationView.play()
        
        animationView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(animationView)
        
        NSLayoutConstraint.activate([
            animationView.widthAnchor.constraint(equalTo: view.widthAnchor),
            animationView.heightAnchor.constraint(equalTo: view.heightAnchor) 
        ])
        return view
    }
    
    func updateUIView(_ uiView: UIView, context: UIViewRepresentableContext<LottieView >) {
        
    }
}

enum LottieFileName {
    public static let onboardingFirst: String = "onboardingFirst"
}
