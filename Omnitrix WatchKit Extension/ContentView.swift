//
//  ContentView.swift
//  Omnitrix WatchKit Extension
//
//  Created by Fernando on 08-01-22.
//

import SwiftUI

struct ContentView: View {
    @State var scrollAmount = 0.0
    
    var body: some View {
        ZStack {
            Image("Watchface")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .rotationEffect(.degrees((scrollAmount/2)*90))
            
            Image("\(Aliens(rawValue: Int(scrollAmount))!)")
                .resizable()
                .padding(.all, 45)
                .aspectRatio(contentMode: .fit)
            
        }
        .offset(y: 15)
        .focusable(true)
        .digitalCrownRotation($scrollAmount, from: 0, through: 14, by: 2, sensitivity: .low, isContinuous: false, isHapticFeedbackEnabled: true)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
