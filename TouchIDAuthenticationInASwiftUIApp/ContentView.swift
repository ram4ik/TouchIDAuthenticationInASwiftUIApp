//
//  ContentView.swift
//  TouchIDAuthenticationInASwiftUIApp
//
//  Created by ramil on 13.07.2021.
//

import SwiftUI

struct ContentView: View {
    
    @State private var username: String = ""
    @State private var password: String = ""
    
    @StateObject private var loginVM = LoginViewModel()
    
    var body: some View {
        NavigationView {
            Form {
                NavigationLink(
                    destination: AccountBalance(),
                    isActive: $loginVM.isAuthenticated,
                    label: {
                        EmptyView()
                    }).opacity(0)
                
                TextField("User name", text: $username)
                TextField("Password", text: $password)
                HStack {
                    Spacer()
                    Button("Login") {
                        
                    }
                    Spacer()
                    Button(action: {
                        loginVM.loginUsingTouchID()
                    }, label: {
                        Image(systemName: "touchid")
                    })
                }
            }.navigationTitle("Login")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
