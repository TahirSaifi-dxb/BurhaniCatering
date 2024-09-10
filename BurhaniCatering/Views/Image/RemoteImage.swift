//
//  RemoteImage.swift
//  BurhaniCatering
//
//  Created by Tahir Saifi on 10/09/2024.
//

import Foundation
import SwiftUI

final class ImageLoader: ObservableObject {
    @Published var image: Image? = nil
    
    func load(fromURLString urlString: String)
    {
        NetworkManager.shared.downloadImage(fromURLString: urlString){
            uiimage in
            guard let uiimage = uiimage else { return }
            DispatchQueue.main.async {
                self.image = Image(uiImage: uiimage)
            }
        }
    }
    
}

struct RemoteImage: View {
    var image: Image?
    
    var body: some View {
        image?.resizable() ?? Image("food-placeholder").resizable()
    }
}

struct FoodRemoteImage: View {
    @StateObject var imageLoader = ImageLoader()
    let urlString: String
    var body: some View {
        RemoteImage(image: imageLoader.image)
            .onAppear {
                imageLoader.load(fromURLString: urlString)
            }
    }
}
