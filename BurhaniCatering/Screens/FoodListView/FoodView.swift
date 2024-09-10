//
//  FoodView.swift
//  BurhaniCatering
//
//  Created by Tahir Saifi on 10/09/2024.
//

import SwiftUI

struct FoodView: View {
    @StateObject var viewModel = FoodListViewModel()
    @State private var isShowingDetail = false
    @State private var selectedfood: Food?
    var body: some View {
        ZStack{
            NavigationView{
                List(viewModel.foods){
                    food in
                    FoodListCell(food: food)
                        .onTapGesture {
                            selectedfood = food
                            isShowingDetail = true                        }
                }
                .navigationTitle("🍝 Food Menu")
                .listStyle(.plain)
                .disabled(isShowingDetail)
            }.task{
                viewModel.getFoods()
            }.blur(radius: isShowingDetail ? 20 : 0)
            if isShowingDetail {
                FoodDetailView(food: selectedfood!, isShowingDetail: $isShowingDetail)
            }
            if viewModel.isLoading {
                LoadingView()
            }
        }
      .alert(item: $viewModel.alertItem){ alertitem in
            Alert(title: alertitem.title,message: alertitem.message, dismissButton: alertitem.dismissButton)
        }
        
    }
    }

#Preview {
    FoodView()
}
