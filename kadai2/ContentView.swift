//
//  ContentView.swift
//  kadai2
//
//  Created by 渡邊魁優 on 2023/11/23.
//

import SwiftUI

struct ContentView: View {
    @State private var number1 = ""
    @State private var number2 = ""
    @State private var bmi = 0
    
    @State private var isAlert = false
    
    var body: some View {
        VStack {
            VStack {
                TextField("", text: $number1)
                TextField("", text: $number2)
            }
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .frame(width: 200)
            .padding()
            Button(action: {
                bmi = parseNumber(number: number1) + parseNumber(number: number2)
            }) {
                Text("計算")
            }
            Text("合計 \(bmi)")
                .padding()
        }
    }
    private func parseNumber(number: String) -> Int {
        return Int(number) ?? 0
    }
}

#Preview {
    ContentView()
}
