//
//  Button.swift
//  BurhaniCatering
//
//  Created by Tahir Saifi on 10/09/2024.
//
import Foundation
import SwiftUI


struct ButtonFood: View {
    let title: LocalizedStringKey
    var body: some View {
        Text(title)
            .font(.title3)
            .fontWeight(.semibold)
            .frame(width: 260, height: 50)
            .foregroundColor(Color.white)
            .background(Color.brandPrimary)
            .cornerRadius(10)
            .padding(.bottom, 30)
    }
}

