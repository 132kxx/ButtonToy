//
//  ContentView.swift
//  ButtonToy
//
//  Created by kxx: on 2022/10/28.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink("Button", destination: ButtonView())
                NavigationLink("Textfield", destination: TextfieldView())
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
