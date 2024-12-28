//
//  ComputationView.swift
//  CalculatorAppSwiftUI
//
//  Created by Manyuchi, Carrington C on 2024/12/22.
//

import SwiftUI

struct ComputationView: View {
    let currentComputation: String
    let mainResult: String
    
    var body: some View {
        VStack (spacing: 10) {
            HStack {
                Spacer()
                Text(currentComputation)
                //.foregroundStyle(foregroundDigitsColor)
                    .lineLimit(1)
            }
            .minimumScaleFactor(0.1)
            
            HStack {
                Spacer()
                Text(mainResult)
                //.foregroundStyle(foregroundDigitsColor)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .lineLimit(1)
            }
            .minimumScaleFactor(0.1)
        }
        .padding(.horizontal)
    }
}

#Preview {
    ComputationView(currentComputation: "5 + 1", mainResult: "6")
}
