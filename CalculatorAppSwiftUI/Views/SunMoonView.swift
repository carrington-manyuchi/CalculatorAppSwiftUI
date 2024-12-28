//
//  SunMoonView.swift
//  CalculatorAppSwiftUI
//
//  Created by Manyuchi, Carrington C on 2024/12/22.
//

import SwiftUI

struct SunMoonView: View {
    var lightMode: Bool
    
    var body: some View {
        HStack(spacing: 30) {
            Image(systemName: "sun.min")
                .font(.largeTitle)
                .imageScale(.large)
                .foregroundStyle(lightMode ? sunOrMoonSelected : sunOrMoonNotSelected)
            

            Image(systemName: "moon")
                .font(.largeTitle)
                .imageScale(.large)
                .foregroundStyle(lightMode ? sunOrMoonNotSelected : sunOrMoonSelected)
        }
        .padding()
        .background(.blue)
        .clipShape(.rect(cornerRadius: 20))
    }
}

#Preview {
    VStack {
        SunMoonView(lightMode: true)
        SunMoonView(lightMode: false)
    }
}
