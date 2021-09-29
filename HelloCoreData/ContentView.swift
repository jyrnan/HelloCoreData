//
//  ContentView.swift
//  HelloCoreData
//
//  Created by jyrnan on 2021/9/29.
//

import SwiftUI

struct ContentView: View {
    let storageProvider: StorageProvider
    
    var body: some View {
        Text("Hello, world!")
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(storageProvider: StorageProvider())
    }
}
