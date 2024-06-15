//
//  IntroScreen.swift
//  Expense Tracker
//
//  Created by Hamza Osama on 6/13/24.
//

import SwiftUI

struct IntroScreen: View {
    //Visability status
    @AppStorage("isFirstTime") private var isFirstTime: Bool = true
    
    var body: some View {
        VStack(spacing: 15) {
            Text("What's new in the\nExpense Tracker")
                .font(.largeTitle.bold())
                .multilineTextAlignment(.center)
                .padding(.top, 65)
                .padding(.bottom, 35)
            
                //points view
            VStack(alignment: .leading, spacing: 25) {
                PointView(symbol: "dollarsign", title: "Transactions", subTitle: "Keep track of your earning and expenses.")
                
                PointView(symbol: "chart.bar.fill", title: "Visual Charts", subTitle: "View your transactions using eye-catching graphical representation.")
                
                PointView(symbol: "magnifyingglass", title: "Advance Filters", subTitle: "Find the expenses you want by advance search and filtering.")
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal, 25)
            
            Spacer(minLength: 10)
            
            Button {
                isFirstTime = false
            } label: {
                Text("Continue")
                    .fontWeight(.bold)
                    .foregroundStyle(.white)
                    .frame(maxWidth: .infinity)
                    .padding(.vertical, 15)
                    .background(appTint.gradient, in: .rect(cornerRadius: 12))
                    .contentShape(.rect)
            }
            .padding(15)
        }
    }
    
    //points view
    @ViewBuilder
    func PointView(symbol: String, title: String, subTitle: String) -> some View {
        HStack(spacing: 20) {
            Image(systemName: symbol)
                .font(.largeTitle)
                .foregroundStyle(appTint.gradient)
                .frame(width: 45)
            
            VStack(alignment: .leading, spacing: 6) {
                Text(title)
                    .font(.title3)
                    .fontWeight(.semibold)
                
                Text(subTitle)
                    .foregroundStyle(.gray)
            }
        }
    }
}

#Preview {
    IntroScreen()
}
