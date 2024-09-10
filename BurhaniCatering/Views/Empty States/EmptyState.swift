//
//  EmptyState.swift
//  BurhaniCatering
//
//  Created by Tahir Saifi on 10/09/2024.
//

import SwiftUI

struct EmptyState: View {
    let imageName: String
    let text: String
    var body: some View {
        ZStack{
            Color(.systemBackground)
                .ignoresSafeArea(.all)
            VStack{
                Image(systemName: imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(height:150)
                
                Text(text)
                    .font(.headline)
                    .foregroundColor(.secondary)
                    .padding()
                    .multilineTextAlignment(.center)
            }.offset(y:-50)
        }
    }
}

#Preview {
    EmptyState(imageName: "cart", text: "Your Cart is Empty")
}
