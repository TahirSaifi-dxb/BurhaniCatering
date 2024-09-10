//
//  User.swift
//  BurhaniCatering
//
//  Created by Tahir Saifi on 10/09/2024.
//

import Foundation

struct User: Codable {
    var FirstName: String = ""
    var LastName: String = ""
    var Email: String = ""
    var selectedDate = Date()
    var extraNapkins = false
    var frequentrefills = false

    
}
