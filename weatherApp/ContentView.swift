//
//  ContentView.swift
//  weatherApp
//
//  Created by Ayşenur ÖZBAY on 25.12.2022.
//

import SwiftUI




struct ContentView: View {
    
    @State private var isNight = false
    
    
    var weekWeatherData :[String: String
    
    var body: some View {
        ZStack{
            //        Color(.blue)
            //            .edgesIgnoringSafeArea(.all)
            BackgroundView(isNight: $isNight) // dolar işareti binding olmasını sağlar
            VStack(spacing: 8){
                CityTextView(cityName:"Tokyo, Japan")
                
                
                MainWeatherView(imageName:  isNight ? "moon.stars.fill":  "cloud.sun.fill", temperature: 76)
                
                HStack(spacing: 20){
                    WeatherDayView(dayOfWeek: "TUE", imageName: "cloud.sun.fill", tempereture: 76)
                    WeatherDayView(dayOfWeek: "WD", imageName: "sun.max.fill", tempereture: 88)
                    
                    WeatherDayView(dayOfWeek: "THU", imageName: "cloud.drizzle.fill", tempereture: 60)
                    
                    WeatherDayView(dayOfWeek: "FRI", imageName: "cloud.sun.fill", tempereture: 72)
                    
                    WeatherDayView(dayOfWeek: "SAT", imageName: "moon.stars.fill", tempereture: 30)
                    
                }
                Spacer() // yazının altında kalan kısmı boşluk olarak atar
                
                Button {
//                    print("tapped")
                    isNight.toggle()
                } label: {
                    WeatherButton(buttonText: "Change the Daytime", backgroundColor: .white, textColor: .blue)
                    
                    
                }
                Spacer()

                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct WeatherDayView: View {
    
    var dayOfWeek : String
    var imageName: String
    var tempereture : Int
    
    var body: some View {
        VStack{
            Text(dayOfWeek)
                .foregroundColor(.white)
                .font(.system(size: 16 , weight: .bold))
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            Text( "\(tempereture)°") // string interpolation                .font(.system(size: 28, weight: .medium))
                .foregroundColor(.white)
            
        }
    }
}

struct BackgroundView: View {
    
    @Binding var isNight: Bool
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [isNight ? .black :.blue,                       isNight ? .gray : Color("LightBlue")]),
                       startPoint: .topLeading,
                       endPoint: .bottomLeading
        )
        .edgesIgnoringSafeArea(.all)
    }
}

struct CityTextView : View {
    
    var cityName: String
    var body: some View {
        Text(cityName)
            .font(.system(size: 32, weight: .medium ,design: .default))
            .foregroundColor(.white)
//                    .padding(.bottom, 200) // bu şekilde sadece bottomda padding uygular
            .padding()
    }
}


struct MainWeatherView: View {
    
    var imageName: String
    var temperature : Int
    var body: some View {
        VStack {
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180 , height: 180)
            Text("\(temperature)° ") // derece sembolü için option + shit + 8
                .font(.system(size: 70 , weight: .medium))
                .foregroundColor(.white)
        }
        .padding(.bottom, 40)
    }
}



