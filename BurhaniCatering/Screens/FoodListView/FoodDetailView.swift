//
//  FoodDetailView.swift
//  BurhaniCatering
//
//  Created by Tahir Saifi on 10/09/2024.
//

import SwiftUI

struct FoodDetailView: View {
    
    @EnvironmentObject var order: Order
    
    let food: Food
    @Binding var isShowingDetail: Bool
    
    var body: some View {
        VStack{
            FoodRemoteImage(urlString: food.imageURL)
                .aspectRatio(contentMode: .fit)
                .frame(width: 300, height: 225)
            VStack{
                Text(food.name)
                    .font(.title2)
                    .fontWeight(.semibold)
                Text(food.description)
                    .multilineTextAlignment(.center)
                    .font(.body)
                    .padding()
                HStack(spacing : 40){
                    VStack(spacing: 5){
                        Text("Calories")
                            .bold()
                            .font(.caption)
                        Text("\(food.calories)")
                            .foregroundColor(.secondary)
                            .fontWeight(.semibold)
                            .italic()
                    }
                    VStack(spacing: 5){
                        Text("Carbs")
                            .bold()
                            .font(.caption)
                        Text("\(food.carbs)")
                            .foregroundColor(.secondary)
                            .fontWeight(.semibold)
                            .italic()
                    }
                    VStack(spacing: 5){
                        Text("Protien")
                            .bold()
                            .font(.caption)
                        Text("\(food.protein)")
                            .foregroundColor(.secondary)
                            .fontWeight(.semibold)
                            .italic()
                    }
                }
            }
            Spacer()
    
            Button {
                order.add(food)
                isShowingDetail = false
            } label: {
                ButtonFood(title: "AED\(food.price, specifier: "%.2f") - Add to Cart")
            }
            
        }.frame(width: 300, height: 525)
            .background(Color(.systemBackground))
            .cornerRadius(12)
            .shadow(radius: 40)
            .overlay(Button{
                isShowingDetail = false
            }label:{
                ZStack{
                    Circle()
                        .frame(width:30 , height: 30 )
                        .foregroundColor(.white)
                        .opacity(0.6)
                    Image(systemName: "xmark")
                        .imageScale(.small)
                        .frame(width: 44,height:44)
                        .foregroundColor(.black)
                }
            }, alignment: .topTrailing)
    }
}

#Preview {
    FoodDetailView(food: mockData.sampleData, isShowingDetail: .constant(true))
}

