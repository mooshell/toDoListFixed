//
//  ContentView.swift
//  toDoListFixed
//
//  Created by Michelle Elias Flores on 5/23/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("To Do List")
                 .font(.system(size: 40))
                 .fontWeight(.black)
            Spacer()
            Button(action: {
                                
            }) {
            Text("+")
            }
            HStack {
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
