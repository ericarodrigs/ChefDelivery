//
//  StoreType.swift
//  ChefDelivery
//
//  Created by Erica Rodrigues on 09/02/25.
//

import Foundation

struct StoreType: Identifiable {
    let id: Int
    let name: String
    let logoImage: String
    let headerImage: String
    let location: String
    let stars: Int
    let products: [ProductType]
}
