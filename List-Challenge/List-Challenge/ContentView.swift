//
//  ContentView.swift
//  List-Challenge
//
//  Created by Kyle Morton on 7/21/25.
//

import SwiftUI

struct ContentView: View {
    
    var randomWords = [
        Word(value: "Hello"),
        Word(value: "World"),
        Word(value: "Swift"),
        Word(value: "UI"),
        Word(value: "Kit")
    ]
    @State var visibleWords = [Word(value:"Test")]
    
    var body: some View {
        VStack {
            Button("Add Random Word") {
                visibleWords.append(randomWords.randomElement()!)
            }
            List(visibleWords) { word in
                Text(word.value)
            }
        }

        
    }
}

struct Word : Identifiable{
    var id: UUID = UUID()
    var value : String
}

#Preview {
    ContentView()
}
