//
//  ContentView.swift
//  LocalizedExample
//
//  Created by Endtry on 18/1/2563 BE.
//  Copyright © 2563 Endtry. All rights reserved.
//

import SwiftUI
import Rswift

struct ContentView: View {
    var body: some View {
        VStack {
            Text(R.string.localizable.hello_world())
            Button(action: {
                UserDefaults.standard.set("en", forKey: "AppleLanguages")
                UserDefaults.standard.synchronize()
            }) {
                Text("Change Language")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
