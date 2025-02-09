//
//  ProductType.swift
//  ChefDelivery
//
//  Created by Erica Rodrigues on 09/02/25.
//

import Foundation

struct ProductType: Identifiable {
    let id: Int
    let name: String
    let description: String
    let image: String
    let price: Double
    
    var formattedPrice: String {
        return "R$ \(price.formatPrice())"
    }
}
