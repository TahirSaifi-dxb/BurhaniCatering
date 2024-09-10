//
//  FoodListCell.swift
//  BurhaniCatering
//
//  Created by Tahir Saifi on 10/09/2024.
//

import SwiftUI

struct FoodListCell: View {
    var food: Food
    var body: some View {
        HStack{
//            FoodRemoteImage(urlString: food.imageURL)
//                .aspectRatio(contentMode: .fit)
//                .frame(width:120, height: 90)
//                .cornerRadius(8)
            AsyncImage(url: URL(string: food.imageURL)) { image in
                image
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width:120, height: 90)
                .cornerRadius(8)
                
            } placeholder: {
                Image("food-placeholder")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width:120, height: 90)
                    .cornerRadius(8)
            }

            VStack(alignment: .leading, spacing: 5)
            {
                Text(food.name)
                    .font(.headline)
                    .bold()
                Text("AED\(String(format: "%.2f", food.price))")
                    .foregroundColor(.secondary)
                    .fontWeight(.semibold)
            }.padding(.leading)
            
        }
    }
}

#Preview {
    FoodListCell(food: mockData.sampleData)
}
