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
       // Text("Computation View")
        
        Text(currentComputation)
        Text(mainResult)
    }
}

#Preview {
    ComputationView(currentComputation: "5 + 1", mainResult: "6")
}
