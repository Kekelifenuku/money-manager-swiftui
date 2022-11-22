//
//  Statistic.swift
//  money-manage
//
//  Created by kekeli on 20/11/2022.
//

import SwiftUI

struct Statistic: View {
    var body: some View {
        ZStack{
            Image("white")
                .resizable()
                .frame(width: 350, height: 250)
                .padding(.bottom, 450)
                .shadow(color: .black.opacity(0.3), radius: 20, x: 0.0, y: 10)
            
            VStack{
                Image("pie")
                    .resizable()
                    .frame(width: 150, height: 150)
                    .padding(.top, 0)
                    .padding(.leading, 200)
                    .shadow(color: .black.opacity(0.3), radius: 20, x: 0.0, y: 10)
            }
            
            VStack{
                Image("3D")
                    .resizable()
                    .frame(width: 150, height: 150)
                    .padding(.top, 0)
                    .padding(.trailing, 200)
                    .shadow(color: .black.opacity(0.3), radius: 20, x: 0.0, y: 10)
            }
            
            
            
            HStack{
                NavigationLink {
                   Text("hi")
                } label: {
                    Label("Expense - 56,366.84", systemImage: "coloncurrencysign.square")
                }
           }
           .frame(width: 350, height: 100)
           .foregroundColor(.blue)
           .background(Color.white)
           .cornerRadius(10)
           .shadow(color: .black.opacity(0.2), radius: 20, x: 0.0, y: 0)
           .padding(.top, 300)
           .padding(.leading, 00)
            
            HStack{
                NavigationLink {
                   Text("hi")
                } label: {
                    Label("Income - 56,366.84", systemImage: "coloncurrencysign.square")
                }
           }
           .frame(width: 350, height: 100)
           .foregroundColor(.blue)
           .background(Color.white)
           .cornerRadius(10)
           .shadow(color: .black.opacity(0.2), radius: 20, x: 0.0, y: 0)
           .padding(.top, 550)
           .padding(.leading, 00)
            
            
            
            
            
        }
    }
}

struct Statistic_Previews: PreviewProvider {
    static var previews: some View {
        Statistic()
    }
}
