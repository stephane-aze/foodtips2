//
//  RegisterView.swift
//  FoodTips2
//
//  Created by Etudiant on 19/11/2021.
//

import SwiftUI

struct RegisterView: View {
    @State var username: String = ""
    @State var password: String = ""
    var body: some View {
        NavigationView {
            VStack{
                Text("Inscription").font(.largeTitle).fontWeight(.semibold).padding(.bottom,20)
                TextField("Username", text: $username).padding()//.background(Color.green)
                    .cornerRadius(5.0)
                    .padding(.bottom,20)
                SecureField("Password", text: $password).padding()
                    //.background(Color.green)
                    .cornerRadius(5.0)
                    .padding(.bottom,20)
                NavigationLink(destination: HomeView()){
                    Text("S'inscrire").font(.headline).foregroundColor(.white)
                        .padding()
                        .frame(width: 220, height: 60)
                        .background(Color.green)
                        .cornerRadius(15.0)
                    }
            
               
            }
            
        }
        
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
