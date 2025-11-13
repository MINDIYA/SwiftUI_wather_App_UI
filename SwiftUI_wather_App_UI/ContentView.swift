//
//  ContentView.swift
//  SwiftUI_wather_App_UI
//
//  Created by Mindiya Lankaja Maitipe on 2025-11-13.
//

import SwiftUI

struct ContentView: View {
    @State private var isNight = false
    var body: some View {
        ZStack {
            BackgroundVeiw(isNight: isNight)
                
            
            VStack {
                CityText(CityName: "Cupertino, CA")
                
                MainWeatherText(Temp: 24,Weather:isNight ? "moon.stars.fill": "cloud.sun.fill")
                
                HStack(spacing:10){
                    Wheather_day_preview(dayofweek: "TUE",
                                         dayimage: "cloud.sun.fill",
                                         daytemp: 24)
                    Wheather_day_preview(dayofweek: "WED",
                                         dayimage: "sun.max.fill",
                                         daytemp: 22)
                    Wheather_day_preview(dayofweek: "THU",
                                         dayimage: "wind.snow",
                                         daytemp: 23)
                    Wheather_day_preview(dayofweek: "FRI",
                                         dayimage: "sunset.fill",
                                         daytemp: 21)
                    Wheather_day_preview(dayofweek: "SAT",
                                         dayimage: "cloud.rain.fill",
                                         daytemp: 19)
                }
                Spacer()
                
                Button{
                    isNight.toggle()
                      
                  }label: {
                      WeatherButton(Title: "Change Day Time", TextColor: .blue, BackgroundColor:.white)
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

struct Wheather_day_preview: View {
    var dayofweek:String
    var dayimage:String
    var daytemp:Int
    
    var body: some View {
        VStack{
            Text(dayofweek)
                .font(.system(size: 16 , weight: .medium , design: .default))
                .foregroundColor(.white)
                .padding()
            
            Image(systemName:dayimage)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40 , height:  40)
            
            Text("\(daytemp)°")
                .font(.system(size: 28 , weight: .bold , design: .default))
                .foregroundColor(.white)
    }
}
}

struct BackgroundVeiw: View {
    
    var isNight:Bool
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [isNight ? .black:.blue, isNight ? .gray:.lightBlue]), startPoint: .topLeading, endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(.all)
    }
}

struct CityText: View {
    
    var CityName:String
    
    var body: some View {
        Text(CityName)
            .font(.system(size: 32 , weight: .medium , design: .default))
            .foregroundColor(.white)
            .padding()
    }
}

struct MainWeatherText: View {
    
    var Temp:Int
    var Weather:String
    
    var body: some View {
        VStack{Image(systemName:Weather)
            .renderingMode(.original)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 180 , height:  180)
        
        Text("\(Temp)°C")
            .font(.system(size: 70 , weight: .medium ))
            .foregroundColor(.white)
        }.padding(20)
    }
}

