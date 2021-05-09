//
//  StartButtonView.swift
//  Fructus
//
//  Created by Jeren Ott on 3/21/21.
//

import SwiftUI

struct StartButtonView: View {
    //Properties
    
    @AppStorage("isOnboarding") var isOnboarding: Bool?
    
    //Body
    
    var body: some View {
        Button(action: {
            isOnboarding = false
        }) {
            HStack(spacing: 8) {
                Text("Start")
                
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(
                Capsule().strokeBorder(Color.white, lineWidth: 1.25)
            )
        } //Button
        .accentColor(Color.white)
    }
}

//Preview

struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
    }
}
