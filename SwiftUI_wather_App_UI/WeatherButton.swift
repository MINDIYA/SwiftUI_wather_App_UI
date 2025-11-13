//
//  WeatherButton.swift
//  SwiftUI_wather_App_UI
//
//  Created by Mindiya Lankaja Maitipe on 2025-11-14.
//

import Foundation
import SwiftUI

struct WeatherButton: View {
    var Title: String
    var TextColor:Color
    var BackgroundColor:Color
    
    var body: some View {
        
              Text(Title)
                  .frame(width: 280 , height: 50)
                  .background(BackgroundColor)
                  .foregroundColor(TextColor)
                  .font(.system(size: 20, weight: .bold, design: .default))
                  .cornerRadius(10)
          
    }
}
