//
//  BurhaniCateringApp.swift
//  BurhaniCatering
//
//  Created by Tahir Saifi on 10/09/2024.
//

import SwiftUI

@main
struct BurhaniCateringApp: App {
    
    var order = Order()
    
    
    
    var body: some Scene {
        WindowGroup {
            BurhaniTabView().environmentObject(order)
        }
    }
}
