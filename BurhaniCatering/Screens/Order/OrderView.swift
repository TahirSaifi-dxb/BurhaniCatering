//
//  OrderView.swift
//  BurhaniCatering
//
//  Created by Tahir Saifi on 10/09/2024.
//

import SwiftUI

struct OrderView: View {
   
    @EnvironmentObject var order : Order
    
    var body: some View {
        NavigationView{
            ZStack{
                VStack{
                    List{
                        ForEach(order.items){
                            food in
                            FoodListCell(food: food)
                        }
                        .onDelete(perform: order.deleteItem)
                    }
                    .listStyle(PlainListStyle())
                    Button{} label: {
                       ButtonFood(title: "AED \(order.totalPrice, specifier: "%.2f") - Place Order")
                    }
                }
                if order.items.isEmpty{
                    EmptyState(imageName: "cart", text: "You have no Items in your Order,\n please add some!")
                }
            }
          
                .navigationTitle("🧾 Orders")
        }
    }
    
    
}

#Preview {
    OrderView()
}
