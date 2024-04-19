//
//  AuthenticationViewModel.swift
//
//

import Foundation
import Combine

class AuthenticationViewModel: ObservableObject {

    var cancellableBiometricTask: AnyCancellable? = nil

    var didAuthenticate = false
    var showAlert = false
    var alertMessage = String()
    
    // Предположим, что у нас есть модель для хранения учетных данных пользователя
        struct UserCredentials {
            let username: String
            let password: String
        }
        
        
        // Функция для регистрации пользователя
        func register(username: String, password: String) {
            // Проверяем, не существует ли уже пользователя с таким логином
            if !isUsernameExists(username: username) {
                // Создаем новую запись с учетными данными пользователя и сохраняем их в UserDefaults
                let newUser = UserCredentials(username: username, password: password)
                saveUserCredentials(user: newUser)
                
                // Помечаем пользователя как аутентифицированного после успешной регистрации
                didAuthenticate = true
            } else {
                // Если пользователь с таким логином уже существует, можно вывести сообщение об ошибке или выполнить другие действия
                print("Пользователь с таким логином уже существует.")
            }
        }
        
        // Функция для входа пользователя
        func login(username: String, password: String) {
            // Проверяем, существует ли пользователь с таким логином и паролем
            if let user = getUserCredentials(username: username), user.password == password {
                // Если пользователь найден и пароль совпадает, помечаем пользователя как аутентифицированного
                didAuthenticate = true
            } else {
                // Если пользователь не найден или пароль не совпадает, можно вывести сообщение об ошибке или выполнить другие действия
                print("Неверный логин или пароль.")
            }
        }
        
        // Функция для проверки существования пользователя с заданным логином
        private func isUsernameExists(username: String) -> Bool {
            if let _ = getUserCredentials(username: username) {
                return true
            }
            return false
        }
        
        // Функция для получения учетных данных пользователя по логину
        private func getUserCredentials(username: String) -> UserCredentials? {
            if let userData = UserDefaults.standard.data(forKey: username),
               let user = try? JSONDecoder().decode(UserCredentials.self, from: userData) {
                return user
            }
            return nil
        }
        
        // Функция для сохранения учетных данных пользователя в UserDefaults
        private func saveUserCredentials(user: UserCredentials) {
            if let encodedData = try? JSONEncoder().encode(user) {
                UserDefaults.standard.set(encodedData, forKey: user.username)
            }
        }

    func authenticate(){
        didAuthenticate = false
        showAlert = false
        alertMessage = ""
        cancellableBiometricTask = BiometricAuthUtlity.shared.authenticate()
            .receive(on: DispatchQueue.main)
            .sink(receiveCompletion: { completion in
                switch completion {
                case .failure(let error):
                    self.showAlert = true
                    self.alertMessage = error.description
                default: return
                }
            }) { _ in
                self.didAuthenticate = true
            }
    }

    deinit {
        cancellableBiometricTask = nil
    }
}
