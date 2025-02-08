//
//  DataSourceMock.swift
//  ChefDelivery
//
//  Created by Erica Rodrigues on 07/02/25.
//

import Foundation

let ordersMock: [OrderType] = [
    OrderType(id: 1, name: "Restaurantes", image: "hamburguer"),
    OrderType(id: 2, name: "Mercado", image: "mercado"),
    OrderType(id: 3, name: "Farmácia", image: "farmacia"),
    OrderType(id: 4, name: "Pet", image: "petshop"),
    OrderType(id: 5, name: "Descontos", image: "descontos"),
    OrderType(id: 6, name: "Bebidas", image: "bebidas"),
    OrderType(id: 7, name: "Gourmet", image: "gourmet"),
]

let ordersBannerMock: [OrderType] = [
    OrderType(id: 1, name: "banner burger", image: "barbecue-banner"),
    OrderType(id: 2, name: "banner prato feito", image: "brazilian-meal-banner"),
    OrderType(id: 3, name: "banner poke", image: "pokes-banner"),
]
