//
//  Alert.swift
//  BurhaniCatering
//
//  Created by Tahir Saifi on 10/09/2024.
//

import SwiftUI

struct AlertItem: Identifiable {
    let id = UUID()
    let title: Text
    let message: Text
    let dismissButton: Alert.Button
    


}

struct AlertContext {
    //MARK: Network Errors
    static let invalidURL = AlertItem(title: Text("Network Error"),
                                      message: Text("there was an issue connecting to the server, if this presist please contact support"),
                                      dismissButton: .default(Text("OK")))
    static let invalidData = AlertItem(title: Text("Server Error"),
                                       message: Text("Data recieved is invalid, please contact support"),
                                       dismissButton: .default(Text("OK")))
    static let invalidResponse = AlertItem(title: Text("Server Error"),
                                           message: Text("Invalid response from server, please try again later"),
                                           dismissButton: .default(Text("OK")))
    static let unabletoComplete = AlertItem(title: Text("Server Error"),
                                            message: Text("Unable to complete your request at this time, please check your network connection"),
                                            dismissButton: .default(Text("OK")))
    //MARK: Account Errors
    static let invalidForm = AlertItem(title: Text("Input Error"),
                                       message: Text("please ensure all fields are filled"),
                                       dismissButton: .default(Text("OK")))
    static let emailValiadtionError = AlertItem(title: Text("Input Error"),
                                                message: Text("Please enter a valid email address"),
                                                dismissButton: .default(Text("OK")))
    //MARK: User Saves
    static let UserSaveSuccess = AlertItem(title: Text("Profiled Saved"),
                                                message: Text("your profile has been saved"),
                                                dismissButton: .default(Text("OK")))
    static let UserSaveFailure = AlertItem(title: Text("Save Error"),
                                                message: Text("your profile could not be saved"),
                                                dismissButton: .default(Text("OK")))
}
