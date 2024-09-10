//
//  ContentView.swift
//  BurhaniCatering
//
//  Created by Tahir Saifi on 10/09/2024.
//

import SwiftUI

struct BurhaniTabView: View {
    
    @EnvironmentObject var order: Order
    var body: some View {
        TabView{
            FoodView()
                .tabItem {
                    Image(systemName: "house")
                        Text("Home")
                }
            AccountView()
                .tabItem {
                    Image(systemName: "person")
                        Text("Account")
                }
            OrderView()
                .tabItem {
                    Label("Order",systemImage: "bag") }
                        .badge(order.items.count)
               
        }.accentColor(Color("brandPrimary"))
    }
}

#Preview {
    BurhaniTabView()
}
