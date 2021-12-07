//
//  HomeView.swift
//  FoodTips2
//
//  Created by Stephane AZEROT on 04/12/2021.
//

import SwiftUI
import Player
import AVFoundation


struct HomeView: View {
    var body: some View {
        TabView {
            ContentHomeView()
                .tabItem{
                    Image(systemName: "house")
                    Text("Accueil")
            
                }
            ContentVideosView()
            .tabItem{
                Image(systemName: "play.rectangle")
                Text("Video")
        
            }
                ContentProfilView()
                .tabItem{
                    Image(systemName: "person.fill")
                    Text("Profil")
            
                }
        }
        
        
    }
}
struct ContentHomeView: View {
    @State private var showingSheet = false
    var body: some View{
        
            Button("Prendre une photo"){
                showingSheet.toggle()
            }
            .sheet(isPresented: $showingSheet) {
                ImagePickerView()
            }

    }
}

struct ContentVideosView: View {
    let player1 = Player()
    
    var body: some View{
        SUIVideoPlayer()
        /*
        player1.url = URL(string:"https://www.youtube.com/watch?v=TH7ouuJYohk")
        let players = [
        player1
        ]*/
        /*
        List {

         

        }
        self.player = Player()
        self.player.playerDelegate = self
        self.player.playbackDelegate = self
        self.player.view.frame = self.view.bounds

        self.addChildViewController(self.player)
        self.view.addSubview(self.player.view)
        self.player.didMove(toParentViewController: self)
        List (players){ player in
            PlayerRow(player: player)
            
        }*/
    }
}
/*
struct PlayerRow: View {
    var player: Player

    var body: some View {
        player
    }
}*/
struct ContentProfilView: View {
    var body: some View{
        VStack{
            CircleProfileView(image: Image("Image"), borderColor: .black, shadowRadius: 5)
            Text("Stephane")
        }
        
    }
}
struct CircleProfileView: View{
    var image: Image
    var borderColor: Color =  .white
    var shadowRadius: CGFloat = 10
    var body: some View{
        image.clipShape(Circle())
                        .overlay(Circle().stroke(borderColor,lineWidth: 4))
                            .shadow(radius: shadowRadius)
        //
    }
}
struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
