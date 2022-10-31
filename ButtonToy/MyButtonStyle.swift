//
//  MyButtonStyle.swift
//  ButtonToy
//
//  Created by kxx: on 2022/10/28.
//

import SwiftUI

enum ButtonType {
    case tab
    case long
    case smaller
    case rotate
    case blur
}

struct MyButtonStyle: ButtonStyle {
    
    var color: Color
    var type: ButtonType
    
    
    func makeBody(configuration: Configuration) -> some View {
        
        configuration.label
            .font(.system(size: 20))
            .foregroundColor(.white)
            .padding()
            .background(color)
            .cornerRadius(10)
//            .scaleEffect(configuration.isPressed ? self.type == .tab ? 1.3 : 1.0 )
            .onTapGesture {
                if (self.type == .tab) {
                    let haptic = UIImpactFeedbackGenerator(style: .light)
                    haptic.impactOccurred()
                }
                
                
            }.onLongPressGesture {
                if (self.type == .tab) {
                    let haptic = UIImpactFeedbackGenerator(style: .heavy)
                    haptic.impactOccurred()
                }
            }

    }
}

struct MyButtonStyle_Previews: PreviewProvider {
    static var previews: some View {
        Button {
            //
        } label: {
            Text("?")
        }.buttonStyle(MyButtonStyle(color: .blue, type: .tab))
    }
}
