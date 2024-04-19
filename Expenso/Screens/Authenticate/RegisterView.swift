//
//  RegisterView.swift
//  Expenso
//
//  Created by Petia on 29.03.24.
//

import SwiftUI

struct RegisterView: View {
    @ObservedObject var viewModel: AuthenticationViewModel
    
    var body: some View {
        VStack {
            // Add your registration UI components here
            Button(action: {
                // Call your registration function from viewModel
                viewModel.register
            }) {
                Text("Register")
            }
        }
    }
}
