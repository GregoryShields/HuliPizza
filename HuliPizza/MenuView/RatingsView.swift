//
//  RatingsView.swift
//  HuliPizza
//
//  Created by Gregory Shields on 12/24/20.
//

import SwiftUI

struct RatingsView: View {
    var body: some View {
        HStack {
            ForEach(0 ..< 4) { item in
                Button(action: {
                    print("Whassup?")
                }) {
                    //Image("Pizza Slice")
                    Image(systemName: "star.circle")
                        //.font(.headline)
                        .font(.system(size: 30))
                        .foregroundColor(Color("G4"))
                }
            }
        }
    }
}

struct RatingsView_Previews: PreviewProvider {
    static var previews: some View {
        RatingsView()
    }
}
