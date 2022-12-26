//
//  ContentView.swift
//  weatherApp
//
//  Created by Ayşenur ÖZBAY on 25.12.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            //        Color(.blue)
            //            .edgesIgnoringSafeArea(.all)
            LinearGradient(gradient: Gradient(colors: [.blue,.white]),
                           startPoint: .topLeading,
                           endPoint: .bottomLeading
            )
            .edgesIgnoringSafeArea(.all)
            VStack(spacing: 8){
                Text("Tokyo, Japan")
                    .font(.system(size: 32, weight: .medium ,design: .default))
                    .foregroundColor(.white)
//                    .padding(.bottom, 200) // bu şekilde sadece bottomda padding uygular
                    .padding()
                VStack {
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180 , height: 180)
                    Text("76 ° ") // derece sembolü için option + shit + 8
                        .font(.system(size: 70 , weight: .medium))
                        .foregroundColor(.white)
                }
                
                HStack{
                    VStack{
                        Text("TUE")
                            .foregroundColor(.white)
                            .font(.system(size: 16 , weight: .bold))
                        Image(systemName: "cloud.sun.fill")
                            .renderingMode(.original)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 40, height: 40)
                        Text( "74°")
                            .font(.system(size: 28, weight: .medium))
                            .foregroundColor(.white)
                        
                    }
                }
                Spacer() // yazının altında kalan kısmı boşluk olarak atar

                
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
