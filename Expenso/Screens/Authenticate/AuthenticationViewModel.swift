//
//  AuthenticationViewModel.swift
//
//

import Foundation
import Combine
import CoreData

class AuthenticationViewModel: ObservableObject {
  @Published var didAuthenticate = false
  @Published var showAlert = false
  @Published var alertMessage = String()

//  // Managed object context (replace with your actual implementation)
//  private var context: NSManagedObjectContext! // Inject or set this in your view model

  func authenticate(username: String? = nil, password: String? = nil) {
    // Fetch user data from Core Data based on username
//    let user = fetchUser(username: username)
    
//    let user = username; username

//    if let user = user, user.authenticate(password: password) {
    if username == "Admin" && password == "12345" {
      didAuthenticate = true
      showAlert = true
      alertMessage = "Log in success!"
    } else {
      showAlert = true
      alertMessage = "Wrong username or password"
    }
  }

//  private func fetchUser(username: String) -> UserCD? {
////    let fetchRequest = UserCD.fetchRequest() as? NSFetchRequest<UserCD>
//    fetchRequest.predicate = NSPredicate(format: "username == %@", username) // Filter by username
//
//    do {
//      let results = try context.fetch(fetchRequest)
//      return results.first
//    } catch {
//      print("Error fetching user: \(error.localizedDescription)")
//      return nil
//    }
//  }
}
