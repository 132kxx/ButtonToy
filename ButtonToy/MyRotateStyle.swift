

import SwiftUI

struct MyRotateStyle: ButtonStyle {
    
    var color: Color

    
    
    func makeBody(configuration: Configuration) -> some View {
        
        configuration.label
            .font(.system(size: 20))
            .foregroundColor(.white)
            .padding()
            .background(color)
            .cornerRadius(10)
            .rotationEffect(.degrees(configuration.isPressed ? 90 : 0), anchor: .bottom)

    }
}


struct MyRotateStyle_Previews: PreviewProvider {
    static var previews: some View {
        Button {
            //
        } label: {
            Text("?")
        }.buttonStyle(MyRotateStyle(color: .gray))
    }
}
