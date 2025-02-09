//
//  StoreDetailView.swift
//  ChefDelivery
//
//  Created by Erica Rodrigues on 09/02/25.
//

import SwiftUI

struct StoreDetailView: View {
    
    let store: OrderType
    
    var body: some View {
        Text(store.name)
    }
}

struct StoreDetailView_Previews: PreviewProvider {
    static var previews: some View {
        StoreDetailView(store: storesMock[0])
    }
}
