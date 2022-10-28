//
//  MyButtonStyle.swift
//  ButtonToy
//
//  Created by kxx: on 2022/10/28.
//

import SwiftUI

struct MyButtonStyle: ButtonStyle {
    
    func makeBody(configuration: Configuration) -> some View {
        
        configuration.label
            .font(.system(size: 20))
            .foregroundColor(.blue)
            .padding()
            .background(Color.green)
            .cornerRadius(10)
            .scaleEffect(configuration.isPressed ? 1.3 : 1.0)
    }
}
