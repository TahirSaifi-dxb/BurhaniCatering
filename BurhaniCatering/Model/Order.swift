//
//  order.swift
//  BurhaniCatering
//
//  Created by Tahir Saifi on 10/09/2024.
//
import Foundation
import SwiftUI

final class Order: ObservableObject {
    @Published var items: [Food] = []
    
    func add(_ food:Food){
        items.append(food)
    }
    func deleteItem(at offsets: IndexSet) {
        items.remove(atOffsets: offsets)
    }
    var totalPrice: Double {
        items.reduce(0) { $0 + $1.price}
    }
}
