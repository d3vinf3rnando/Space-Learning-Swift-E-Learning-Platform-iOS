//
//  ContentView.swift
//  Space_Learning
//
//  Created by Devin Fernando on 2022-11-10.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "book")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Space Learning Testing Application - swift ")
            //chnage the text after push
            
            //GITHUB WORKING PROPPERLY
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
