//
//  TransactionsHeader.swift
//  money-manage
//
//  Created by Kekeli on 2022-11-19.
//

import Foundation
import SwiftUI

struct TransactionsHeader: View {
    @State private var showSheet: Bool = false
    @State private var quantity = 0
    var body: some View {
        
        HStack {
            Text("Send to money")
                .font(.headline)
            Spacer()
            
            Button {
                               showSheet.toggle()
                
            } label: {
                Image(systemName: "plus.circle.fill")
                    .resizable()
                    .foregroundColor(Color(#colorLiteral(red: 0.3097526431, green: 0.3843510449, blue: 0.7528470159, alpha: 1)))
                    .frame(width: 30, height: 30)
                Text("Add recipient")
                    .font(.headline)
            }}
        .sheet(isPresented: $showSheet) {
                      Addrecipient()
            .presentationDetents([.medium,.fraction(0.70)])
        }
            .padding(20)
            .padding(.bottom, 40)
            .foregroundColor(.white)
            .background(Color(#colorLiteral(red: 0.1019468382, green: 0.1058915928, blue: 0.1333118379, alpha: 1)))
            .cornerRadius(20)
        }
    }

