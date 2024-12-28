//
//  ButtonView.swift
//  CalculatorAppSwiftUI
//
//  Created by Manyuchi, Carrington C on 2024/12/28.
//

import SwiftUI

struct ButtonView: View {
    
    let calcButton: CalcButton
    
    let fgColor: Color
    let bgColor: Color
    
    var systemImage: String? {
       let value  =  calcButton.rawValue
        return value.contains("IMG") ? value.replacingOccurrences(of: "IMG", with: "") : nil
    }
    
    var text: String? {
        let value = calcButton.rawValue
        return value.contains("IMG") ? nil : value
    }
    
    let buttonDim: CGFloat = UIScreen.main.bounds.width / 5
    
    var body: some View {
        VStack {
            Text(text ?? "")
            Image(systemName: systemImage ?? "")
        }
        .font(.title2)
        .fontWeight(.semibold)
        .frame(minWidth: buttonDim, minHeight: buttonDim)
        .foregroundColor(fgColor)
        .background(bgColor)
        .clipShape(.rect(cornerRadius: 15))
        .shadow(color: bgColor, radius: 5, x: 5, y: 5)
    }
}

#Preview {
    VStack {
        ButtonView(calcButton: .one, fgColor: foregroundDigitsColor, bgColor: buttonBackgroundColor)
        ButtonView(calcButton: .percent, fgColor: foregroundDigitsColor, bgColor: buttonBackgroundColor)
        ButtonView(calcButton: .add, fgColor: foregroundDigitsColor, bgColor: buttonBackgroundColor)
    }
}
