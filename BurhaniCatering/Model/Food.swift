//
//  Food.swift
//  BurhaniCatering
//
//  Created by Tahir Saifi on 10/09/2024.
//

import Foundation

struct Food: Decodable, Identifiable{
    let id: Int
    let name: String
    let description: String
    let price: Double
    let imageURL: String
    let calories: Int
    let protein: Int
    let carbs: Int
    
    
    
}

struct foodResponses: Decodable {
    let request: [Food]
}

struct mockData {
    
    static let sampleData = Food(id: 1, name: "Test Chicken", description: "Chicken Data is very nice but not good", price: 10, imageURL: "test", calories: 100, protein: 10, carbs: 10)
    static let sampleData2 = Food(id: 2, name: "Test Chicken", description: "Chicken Data is very nice but not good", price: 10, imageURL: "test", calories: 100, protein: 10, carbs: 10)
    static let sampleData3 = Food(id: 3, name: "Test Chicken", description: "Chicken Data is very nice but not good", price: 10, imageURL: "test", calories: 100, protein: 10, carbs: 10)
    static let sampleData4 = Food(id: 4, name: "Test Chicken", description: "Chicken Data is very nice but not good", price: 10, imageURL: "test", calories: 100, protein: 10, carbs: 10)
    static let sampleData5 = Food(id: 5, name: "Test Chicken", description: "Chicken Data is very nice but not good", price: 10, imageURL: "test", calories: 100, protein: 10, carbs: 10)

    static let foods = [sampleData,sampleData2,sampleData3,sampleData4,sampleData5]
}
