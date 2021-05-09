//
//  OnboardingView.swift
//  Fructus
//
//  Created by Jeren Ott on 3/21/21.
//

import SwiftUI

struct OnboardingView: View {
    //Properties
    
    var fruits: [Fruit] = fruitsData
    
    //Body
    
    var body: some View {
        TabView {
            ForEach(fruits[0...5]) { item in
                FruitCardView(fruit: item)
            } //Loop
        } //Tab
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

//Preview

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(fruits: fruitsData)
    }
}
