//
//  AuthenticationViewModel.swift
//
//

import Foundation
import Combine

class AuthenticationViewModel: ObservableObject {
    @Published var didAuthenticate = false
    @Published var showAlert = false
    @Published var alertMessage = String()

    func authenticate(username: String? = nil, password: String? = nil) {
        // Проверка логина и пароля без хеширования

        if username == "Admin" && password == "12345" {
            // При совпадении логина и пароля
            didAuthenticate = true
            showAlert = true
            alertMessage = "Log in seccess!"
        } else {
            // При несовпадении логина и пароля
            showAlert = true
            alertMessage = "Wrong username or password"
        }
    }

}
