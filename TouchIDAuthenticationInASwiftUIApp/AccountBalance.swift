//
//  AccountBalance.swift
//  TouchIDAuthenticationInASwiftUIApp
//
//  Created by ramil on 13.07.2021.
//

import SwiftUI

struct AccountBalance: View {
    var body: some View {
        VStack {
            Text("Account Balance $1042")
                .font(.title)
                
            NavigationLink("Go", destination: Text("Page 3"))
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .navigationBarBackButtonHidden(true)
    }
}

struct AccountBalance_Previews: PreviewProvider {
    static var previews: some View {
        AccountBalance()
    }
}
