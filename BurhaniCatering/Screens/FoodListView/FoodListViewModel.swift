//
//  FoodListViewModel.swift
//  BurhaniCatering
//
//  Created by Tahir Saifi on 10/09/2024.
//

import Foundation
import SwiftUI

@MainActor final class FoodListViewModel: ObservableObject {
    @Published var foods: [Food] = []
    @Published var alertItem: AlertItem?
    @Published var isLoading: Bool = false
    
    
//    func getFoods(){
//        isLoading = true
//        NetworkManager.shared.getFood {  result in
//            DispatchQueue.main.async {
//                self.isLoading = false
//                switch result {
//                case .success(let foods):
//                    self.foods = foods
//                    
//                case .failure(let error):
//                    switch error {
//                    case .invalidResponse:
//                        self.alertItem = AlertContext.invalidResponse
//                    case .invalidData:
//                        self.alertItem = AlertContext.invalidData
//                    case .invalidURL:
//                        self.alertItem = AlertContext.invalidURL
//                    case .unableToComplete:
//                        self.alertItem = AlertContext.unabletoComplete
//                    }
//                    
//                }
//            }
//           
//        }
//    }

    func getFoods(){
        isLoading = true
        Task{
            do {
                foods = try await NetworkManager.shared.getFood()
                isLoading = false
            
            }catch {
                alertItem = AlertContext.invalidResponse
                isLoading = false
            }
        }
        
   
    }
}
