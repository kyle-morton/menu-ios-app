//
//  MenuListRow.swift
//  Menu
//
//  Created by Kyle Morton on 7/23/25.
//

import SwiftUI

struct MenuListRow: View {
    
    var item:MenuItem
    
    var body: some View {
        HStack {
            Image(item.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height:50)
                .cornerRadius(15)
            
            Text(item.name)
                .fontWeight(.bold)
            
            Spacer()
            
            Text("$" + item.price)
        }
        .listRowSeparator(.hidden) // note this on the item in the list, not the list itself
        .listRowBackground(
                Color(.brown)
                    .opacity(0.1)
        )
    }
}

#Preview {
    MenuListRow(item: MenuItem(id: UUID(), name: "Test Item", price: "10.00", imageName: "onigiri"))
}
