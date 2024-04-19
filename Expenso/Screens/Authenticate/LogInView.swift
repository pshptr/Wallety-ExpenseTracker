//
//  LogInView.swift
//  Expenso
//
//  Created by Petia on 29.03.24.
//

import SwiftUI

struct LoginView: View {
    @ObservedObject var viewModel: AuthenticationViewModel
    
    var body: some View {
        VStack {
            // Add your login UI components here
            Button(action: {
                // Call your login function from viewModel
                viewModel.login
            }) {
                Text("Login")
            }
        }
    }
}
