//
//  ContentView.swift
//  FoodList
//
//  Created by Andrey Samchenko on 21.10.2022.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("shouldShowOnboarding") var shouldShowOnboarding : Bool = true
    @State var selectedIndex = 0
    // показать фулскрин фото
    @State var presented = false
    
    let icon = [
        "list.number",
        "gear",
        "camera",
        "lasso",
        "books.vertical"
    ]
    
    var body: some View {
        VStack {
            // Content
            ZStack {
                
                Spacer().fullScreenCover(isPresented: $presented) {
                    Button(action: {
                        presented.toggle()
                    }, label: {
                        Text("LOOOL")
                            .frame(width: 200, height: 50)
                            .background(Color.pink)
                            .cornerRadius(12)
                    })
                    Text("Full screen")
                }
                
                switch selectedIndex {
                case 0:
                    NavigationView {
                        ListView()
                    }
                case 1:
                    NavigationView {
                        VStack {
                            Text("111111111111111111")
                        }
                        .navigationTitle("Second")
                    }
                case 2:
                    NavigationView {
                        VStack {
                            Text("222222222222222")
                        }
                        .navigationTitle("Three")
                    }
                case 3:
                    NavigationView {
                        VStack {
                            Text("3333333333")
                        }
                        .navigationTitle("four")
                    }
                default:
                    NavigationView {
                        VStack {
                            Text("KEKEKE")
                        }
                        .navigationTitle("Lol")
                    }
                }
            }
            
            Divider()
            HStack {
                ForEach(0..<5, id: \.self) { number in
                    Spacer()
                    Button(action: {
                        if number == 2 {
                            presented.toggle()
                        } else {
                            self.selectedIndex = number
                        }
                    }, label: {
                        if number == 2 {
                            Image(systemName: icon[number])
                                .font(.system(
                                    size: 25,
                                    weight: .regular,
                                    design: .default
                                ))
                                .foregroundColor(.white)
                                .frame(width: 60, height: 60)
                                .background(Color.blue)
                                .cornerRadius(30)
                        } else {
                            Image(systemName: icon[number])
                                .font(.system(
                                    size: 25,
                                    weight: .regular,
                                    design: .default
                                ))
                                .foregroundColor(selectedIndex == number ? .black : Color(UIColor.lightGray))
                        }
                    })
                    Spacer()
                }
            }
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
