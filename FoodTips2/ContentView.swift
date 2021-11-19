//
//  ContentView.swift
//  FoodTips2
//
//  Created by Etudiant on 19/11/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
                    Text("Home Tab")
                        .font(.system(size: 30, weight: .bold, design: .rounded))
                        .tabItem {
                            Image(systemName: "house.fill")
                            Text("Home")
                        }
            Text("Video Tab")
                    .font(.system(size: 30, weight: .bold, design: .rounded))
                    .tabItem {
                        Image(systemName: "video.circle.fill")
                        Text("Liste des videos")
                    }
                }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
