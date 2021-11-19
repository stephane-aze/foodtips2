//
//  RegisterView.swift
//  FoodTips2
//
//  Created by Etudiant on 19/11/2021.
//

import SwiftUI

struct RegisterView: View {
    @State var username: String = ""
    var body: some View {
        VStack{
            Text("Register")
            TextField("Username", text: $username).padding()//.background(Color.green)
                .cornerRadius(5.0)
                .padding(.bottom,20)
            
            Button(action: {
                print("Buttontapped")
            }){
                Text("Register")
            }
            /*NavigationView {
                NavigationLink(destination: Text("Second View")) {
                        Text("Hello, World!")
                    }
                    .navigationTitle("Navigation")
            }*/
            
        }
        
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
