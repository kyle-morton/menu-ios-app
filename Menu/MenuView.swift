//
//  ContentView.swift
//  Menu
//
//  Created by Kyle Morton on 7/21/25.
//

import SwiftUI 

struct MenuView: View {
    
    @State var menuItems: [MenuItem] = [MenuItem]() // Remember: State props are tracked for changes to refresh the UI
    var dataService = DataService()
    
    var body: some View {
        List(menuItems) { item in
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
        .listStyle(.plain)
        .onAppear() {
            // This is where you call for your data
            menuItems = dataService.getData()
        }
        
    }
}

#Preview {
    MenuView()
}
