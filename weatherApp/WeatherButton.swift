import SwiftUI

struct WeatherButton : View {
    var buttonText: String
    var backgroundColor: Color
    var textColor : Color
    
    var body: some View {
        Text (buttonText)
            .frame(width: 280, height: 50)
            .background(backgroundColor)
            .foregroundColor(textColor)
            .font(.system(size: 20 , weight: .bold))
            .cornerRadius(10)
    }
}

