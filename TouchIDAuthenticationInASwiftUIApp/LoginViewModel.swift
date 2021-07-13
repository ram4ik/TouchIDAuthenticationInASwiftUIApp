//
//  LoginViewModel.swift
//  TouchIDAuthenticationInASwiftUIApp
//
//  Created by ramil on 13.07.2021.
//

import Foundation

class LoginViewModel: ObservableObject {
    
    @Published var isAuthenticated: Bool = false
    
    func login(_ username: String, _ password: String) {
        
    }
    
    func loginUsingTouchID() {
        
        AuthenticationService().authenticateUsingTouchID { success, error in
            if success {
                self.isAuthenticated = true
            } else if let error = error {
                print(error.localizedDescription)
            }
        }
    }
}
