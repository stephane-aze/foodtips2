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
    @State var showError: Bool = false
    @State var isValid: Bool = false
    var body: some View {
        VStack {
            
            NavigationView {
                VStack{
                    Image("Food").resizable()
                                .aspectRatio(contentMode: .fill)
                                    .frame(width: 390.0, height: 50.0)
                    WelcomeText()
                    TextField("Nom", text: $username).padding()//.background(Color.green)
                        .cornerRadius(5.0)
                        .padding(.bottom,20)
                    SecureField("Mot de passe", text: $password).padding()
                        //.background(Color.green)
                        .cornerRadius(5.0)
                        .padding(.bottom,20)
                        
                    if showError {
                        Text("Erreur de connexion").foregroundColor(Color.red)
                    }
                    NavigationLink(destination: HomeView()){
                            
                            LoginButtonContent()
                        }
                    /*if username == "Stephane" && password == "123456" {
                        self.isValid = true
                        
                    }
                    else{
                        self.showError = true
                    }*/
                    
                    NavigationLink(destination: RegisterView()) {
                        Text("S'inscrire")
                    }
                    .navigationTitle("FoodTips")
            
                }
              
                
            }
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
            
        Text("Bienvenue!")
            .font(.largeTitle).fontWeight(.semibold).padding(.bottom,20)

        
    }
}
struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
