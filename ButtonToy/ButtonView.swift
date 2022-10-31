//
//  ButtonView.swift
//  ButtonToy
//
//  Created by kxx: on 2022/10/31.
//

import SwiftUI

struct ButtonView: View {
    var body: some View {
        VStack {
            Button  {
                //
            } label: {
                Text("탭")
            }.buttonStyle(MyButtonStyle(color: .blue, type: .tab))
            
                          
            Button {
                //
            } label: {
                Text("롱탭")
            }.buttonStyle(MyButtonStyle(color: .green, type: .long))
 

            Button  {
                //
            } label: {
                Text("축소")
            }

            
            Button  {
                //
            } label: {
                Text("회전")
            }.buttonStyle(MyRotateStyle(color: .gray))
            
            Button  {
                //
            } label: {
                Text("블러")
            }
        }
        .padding()
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView()
    }
}
