//
//  AuthenticationService.swift
//  TouchIDAuthenticationInASwiftUIApp
//
//  Created by ramil on 13.07.2021.
//

import Foundation
import LocalAuthentication

class AuthenticationService {
    
    func authenticateUsingTouchID(completion: @escaping (Bool, Error?) -> Void) {
        
        let context = LAContext()
        var error: NSError?
        
        if context.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: &error) {
            
            let reason = "Touch authentication is required!"
            
            context.evaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, localizedReason: reason) { success, error in
                DispatchQueue.main.async {
                    completion(success, error)
                }
            }
        }
    }
}
