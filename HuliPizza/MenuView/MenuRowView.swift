//
//  MenuRowView.swift
//  HuliPizza
//
//  Created by Gregory Shields on 12/24/20.
//

import SwiftUI

struct MenuRowView: View {
    var body: some View {
        HStack(alignment: .top, spacing: 15) {
            Image("1_100w")
                // These two don't work out because the border doesn't conform to the corner radius.
                //.cornerRadius(10)
                //.border(Color("G4"), width: 2)
                
                //.clipShape(Capsule())
                .clipShape(RoundedRectangle(cornerRadius: 20, style: .circular))
                
                .overlay(RoundedRectangle(cornerRadius: 20, style: .circular).stroke(Color("G4"), style: StrokeStyle(lineWidth: 3)))
                
                .shadow(color: Color.black.opacity(0.5), radius: 5, x: 5, y: 5)
            
            VStack(alignment: .leading) {
                Text("Huli Chicken Pizza")
                    .font(.title)
                    .fontWeight(.light)
                
                RatingsView()
            }
        }
    }
}

struct MenuRowView_Previews: PreviewProvider {
    static var previews: some View {
        MenuRowView()
            .padding()
            //.environment(\.sizeCategory, .accessibilityExtraExtraLarge)
    }
}

