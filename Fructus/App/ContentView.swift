//
//  ContentView.swift
//  Fructus
//
//  Created by Jeren Ott on 3/21/21.
//

import SwiftUI

struct ContentView: View {
    //Properties
    
    @State private var isShowingSettings: Bool = false
    
    var fruits: [Fruit] = fruitsData
    
    //Body
    
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits.shuffled()) { item in
                    NavigationLink(
                        destination: FruitDetailView(fruit: item)) {
                        FruitRowView(fruit: item)
                            .padding(.vertical, 4)
                    }
                }
            }
            .navigationTitle("Fruits")
            .navigationBarItems(trailing:
                Button(action: {
                    isShowingSettings = true
                }) {
                    Image(systemName: "slider.horizontal.3")
                }//Button
                .sheet(isPresented: $isShowingSettings) {
                    SettingsView()
                }//sheet
            )
        }//NavigationView
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

//Preview

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
    }
}
