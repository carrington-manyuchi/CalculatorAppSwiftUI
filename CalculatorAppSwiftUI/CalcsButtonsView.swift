//
//  CalcsButtonsView.swift
//  CalculatorAppSwiftUI
//
//  Created by Manyuchi, Carrington C on 2024/12/22.
//

import SwiftUI

struct CalcButtonModel: Identifiable {
    var id = UUID()
    var calcButton: CalcButton
    var color: Color = foregroundDigitsColor
}

struct RowsOfCalcButtonModel: Identifiable {
    var id = UUID()
    let row: [CalcButtonModel]
}

struct CalcsButtonsView: View {
    
    @Binding var currentComputation: String
    @Binding var mainResult: String
    
    
    let buttonData: [RowsOfCalcButtonModel] = [
        RowsOfCalcButtonModel(
            row: [
                CalcButtonModel(
                    calcButton: .clear,
                    color: foregroundTopButtonsColor
                ),
                CalcButtonModel(
                    calcButton: .negative,
                    color: foregroundTopButtonsColor
                ),
                CalcButtonModel(
                    calcButton: .percent,
                    color: foregroundTopButtonsColor
                ),
                CalcButtonModel(
                    calcButton: .divide,
                    color: foregroundRightButtonsColor
                ),
            ]
        ),
        RowsOfCalcButtonModel(row: [
            CalcButtonModel(calcButton: .seven),
            CalcButtonModel(calcButton: .eight),
            CalcButtonModel(calcButton: .nine),
            CalcButtonModel(calcButton: .multiply,
                            color: foregroundRightButtonsColor
                           )
        ]),
        RowsOfCalcButtonModel(row: [
            CalcButtonModel(calcButton: .four),
            CalcButtonModel(calcButton: .five),
            CalcButtonModel(calcButton: .six),
            CalcButtonModel(calcButton: .divide,
                            color: foregroundRightButtonsColor
                           )
        ]),
        RowsOfCalcButtonModel(row: [
            CalcButtonModel(calcButton: .one),
            CalcButtonModel(calcButton: .two),
            CalcButtonModel(calcButton: .three),
            CalcButtonModel(calcButton: .add,
                            color: foregroundRightButtonsColor
                           )
        ]),
        RowsOfCalcButtonModel(row: [
            CalcButtonModel(calcButton: .undo),
            CalcButtonModel(calcButton: .zero),
            CalcButtonModel(calcButton: .decimal),
            CalcButtonModel(calcButton: .equal,
                            color: foregroundRightButtonsColor
                           )
        ]),
        
    ]
    
    var body: some View {
        Grid() {
            ForEach(buttonData) { rowOfCalcButtonsModel in
                GridRow {
                    ForEach(rowOfCalcButtonsModel.row) { calcButtonModel in
                        Button {
                            //TODO:
                            // Logic takes place
                            print("Button pressed")
                            
                            
                            
                            buttonPressed(calcButton: calcButtonModel.calcButton)
                        } label: {
                            ButtonView(calcButton: calcButtonModel.calcButton, fgColor: calcButtonModel.color, bgColor: buttonBackgroundColor )
                        }

                    }
                }
            }
        }
        .padding()
        .background(secondaryBackgroundColor.presentationCornerRadius(20))
    }
    
    func buttonPressed(calcButton: CalcButton) {
        switch calcButton {
            
        case .clear:
            currentComputation = "0"
            mainResult = "0"
            
        case .equal, .negative:
            print("eq/neg")
            
        case .decimal:
            print("dec")
            
        case .percent:
            if lastCharacterIsDigit(str: currentComputation) {
                appendToCurrentComputation(calcButton: calcButton)
            }
                        
        case .undo:
            print("undo")
            currentComputation = String(currentComputation.dropLast())
      
        case .zero:
            currentComputation.append("0")
       
        case .add, .subtract, .divide, .multiply:
            if lastCharacterIsDigitOrPercent(str: currentComputation) {
                appendToCurrentComputation(calcButton: calcButton)
            }
            
        default:
            appendToCurrentComputation(calcButton: calcButton)
        }
        
    }
    
    func appendToCurrentComputation(calcButton: CalcButton) {
        currentComputation += calcButton.rawValue
    }
}

#Preview {
    CalcsButtonsView(currentComputation: .constant("5+1"), mainResult: .constant("6"))
}
