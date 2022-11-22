//
//  TransactionRow.swift
//  money-manage
//
//  Created by Kekeli on 2022-11-19.
//

import Foundation
import SwiftUI

struct TransactionRow: View {
    
    var body: some View {
        ScrollView{
            HStack {
                Image("Spotify")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 30, height: 30)
                    .padding(5)
                VStack(alignment: .leading) {
                    Text("Spotify")
                        .font(.headline)
                    Text("19 Nov 2022  11:08")
                        .font(.caption)
                        .foregroundColor(Color(.secondaryLabel))
                }
                Spacer()
                Text("-$60.0")
                    .font(.headline)
            }
            .padding(8)
        }
    }
}
