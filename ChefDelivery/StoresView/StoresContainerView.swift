//
//  StoresContainerView.swift
//  ChefDelivery
//
//  Created by Erica Rodrigues on 08/02/25.
//

import SwiftUI

struct StoresContainerView: View {
    
    let title = "Lojas"
    @State private var ratingFilter = 0
    @State private var minDistance: Double = 0
    @State private var maxDistance: Double = 25
    
    var stores: [StoreType]
    
    var filteredStores: [StoreType] {
        return stores.filter { store in
            store.stars >= ratingFilter && (store.distance >= minDistance && store.distance < maxDistance)
        }
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text(title)
                    .font(.headline)
                
                Spacer()
                
                Menu("Estrelas") {
                    
                    Button {
                        ratingFilter = 0
                    } label: {
                        Text("Limpar filtro")
                    }
                    
                    Divider()
                    
                    ForEach(1...5, id: \.self) { rating in
                        Button {
                            ratingFilter = rating
                        } label: {
                            Text(rating == 1 ? "\(rating) estrela ou mais" : "\(rating) estrelas ou mais")
                        }
                    }
                    
                }
                .foregroundColor(.black)
                
                Menu("Distância") {
                    
                    Button {
                        minDistance = 0
                        maxDistance = 25
                    } label: {
                        Text("Limpar filtro")
                    }
                    
                    Divider()
                    
                    ForEach(Array(stride(from: 0, to: 25, by: 5)), id: \.self) { distance in
                        Button {
                            minDistance = Double(distance)
                            maxDistance = Double(distance + 5)
                        } label: {
                            Text("De \(distance) até \(distance + 5)km")
                        }
                    }
                    
                }
                .foregroundColor(.black)
            }
            
            VStack(alignment: .leading, spacing: 30) {
                
                if filteredStores.isEmpty {
                    Text("Nenhum resultado encontrado.")
                        .font(.title2)
                        .bold()
                        .foregroundColor(Color("ColorRed"))
                        .padding(.vertical, 32)
                        .frame(maxWidth: .infinity)
                        .multilineTextAlignment(.center)
                } else {
                    ForEach(filteredStores){store in
                        NavigationLink {
                            StoreDetailView(store: store)
                        } label: {
                            StoreItemView(store: store)
                        }
                    }
                }
            }
            .foregroundColor(.black)
        }
        .padding(20)
    }
}

struct StoresContainerView_Previews: PreviewProvider {
    static var previews: some View {
        StoresContainerView(stores: storesMock)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
