//
//  accountViewModel .swift
//  BurhaniCatering
//
//  Created by Tahir Saifi on 10/09/2024.
//

import Foundation
import SwiftUI

final class AccountViewModel: ObservableObject {
    @AppStorage("user") private var userData: Data?
    @Published  var user = User()
    @Published var alertItem:AlertItem?
    
    func saveChanges() {
        guard isValidForm else { return }
        
        do {
            let data = try JSONEncoder().encode(user)
            userData = data
            alertItem = AlertContext.UserSaveSuccess
        }catch{
            alertItem = AlertContext.UserSaveFailure
        }
        
    }
    
    func retrieveUser() {
    guard let userData = userData else { return }
        do {
            user = try JSONDecoder().decode(User.self, from: userData)
        }catch{
            alertItem = AlertContext.UserSaveFailure
        }
    }
    
    var isValidForm: Bool {
        guard !user.FirstName.isEmpty && !user.LastName.isEmpty && !user.Email.isEmpty else {
            alertItem = AlertContext.invalidForm
            return false }
        guard user.Email.isValidEmail else {
            alertItem = AlertContext.emailValiadtionError
            return false
        }
        return true
    }

}
