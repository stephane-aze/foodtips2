//
//  LoginView.swift
//  FoodTips
//
//  Created by Etudiant on 19/11/2021.
//

import SwiftUI

struct LoginView: View {
    @State var username: String = ""
    @State var password: String = ""
    var body: some View {
        VStack{
            WelcomeText()
            TextField("Username", text: $username).padding()//.background(Color.green)
                .cornerRadius(5.0)
                .padding(.bottom,20)
            SecureField("Password", text: $password).padding()
                //.background(Color.green)
                .cornerRadius(5.0)
                .padding(.bottom,20)
            Button(action: {
                print("Buttontapped")
            }){
                LoginButtonContent()
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
struct LoginButtonContent: View{
    var body: some View{
        Text("Login").font(.headline).foregroundColor(.white)
            .padding()
            .frame(width: 220, height: 60)
            .background(Color.green)
            .cornerRadius(15.0)
    }
}
struct WelcomeText: View{
    var body: some View {
            
        Text("Welcome!")
            .font(.largeTitle).fontWeight(.semibold).padding(.bottom,20)

        
    }
}
struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
