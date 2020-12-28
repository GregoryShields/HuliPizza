//
//  HistoryRowView.swift
//  HuliPizza
//
//  Created by Gregory Shields on 12/24/20.
//

import SwiftUI

struct HistoryRowView: View {
    var body: some View {
        HStack(alignment: .top, spacing: 15) {
            Image("1_100w")
                .clipShape(Circle())
                .shadow(
                    color: Color.black.opacity(0.5),
                    radius: 10, x: 5, y: 5
                )
            
            Text("Huli Chicken")
                .font(.title)
            
            Spacer()
        }
        .overlay(
            Image(systemName: "chevron.right.square")
                .padding()
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .foregroundColor(Color("G3")),
            alignment: .trailing
        )
    }
}

struct HistoryRowView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryRowView()
    }
}
