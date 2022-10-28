//
//  ContentView.swift
//  ButtonToy
//
//  Created by kxx: on 2022/10/28.
//

import SwiftUI

struct ContentView: View {
    var generator = UINotificationFeedbackGenerator()
    
    var body: some View {
        VStack {
            Button  {
                self.generator.notificationOccurred(.success)
            } label: {
                Text("탭")
            }
            .buttonStyle(MyButtonStyle())
            
            Button  {
                //
            } label: {
                Text("롱탭")
            }
            
            Button  {
                //
            } label: {
                Text("축소")
            }
            
            Button  {
                //
            } label: {
                Text("회전")
            }
            
            Button  {
                //
            } label: {
                Text("블러")
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
