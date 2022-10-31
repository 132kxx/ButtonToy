//
//  TextfieldView.swift
//  ButtonToy
//
//  Created by kxx: on 2022/10/31.
//

import SwiftUI

struct TextfieldView: View {
    
    @State private var inputValue: String = ""
    @State private var inputPassword: String = ""
    @State private var opacityNum: Double = 0.0
    var body: some View {
        VStack(spacing: 10) {
            
            //input ID
            HStack {
                TextField("username", text: $inputValue)
                    .textFieldStyle(.roundedBorder)
                    .disableAutocorrection(true)
                    .autocapitalization(.none)
                
                    Button {
                        inputValue = ""
                    } label: {
                        if(inputValue != ""){
                            Image(systemName: "multiply.circle")
                                .foregroundColor(.gray)
                        }
                    }

            }

            //input password
            HStack {
                SecureField("password", text: $inputPassword)
                    .textFieldStyle(.roundedBorder)
                    .disableAutocorrection(true)
                    .autocapitalization(.none)
                
                Button {
                    inputPassword = ""
                } label: {
                    if(inputPassword != ""){
                        Image(systemName: "multiply.circle")
                            .foregroundColor(.gray)
                    }
                }
            }
            
            Button {
                if(inputValue != "" && inputPassword != "") {
                    opacityNum = 1.0
                }
            } label: {
                Text("submit")
                    .padding()
            }

            Text("ID: \(inputValue)")
                .opacity(opacityNum)
            
            Text("password: \(inputPassword)")
                .opacity(opacityNum)
            
        }
        .padding(.horizontal, 40)
    }
}

struct TextfieldView_Previews: PreviewProvider {
    static var previews: some View {
        TextfieldView()
    }
}
