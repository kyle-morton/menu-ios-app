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
            MenuListRow(item:item)
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
