//
//  PageTitleView.swift
//  HuliPizza
//
//  Created by Gregory Shields on 12/24/20.
//

import SwiftUI

struct PageTitleView: View {
    var title: String
    
    // Since the history is also using this same view,
    // we want to make sure that the chevron is only on
    // on view at a given time. We do that by hiding it
    // when it's set to nil (the value is absent).
    var isDisplayingOrders: Bool! = nil
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Text(title)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .padding(.trailing)
            }
            .overlay(
                // The nil coalescing here means no value for
                // isDisplayingOrders is interpreted as false.
                // And true is up, false is down.
                Image(systemName: isDisplayingOrders ?? false ? "chevron.up.square" : "chevron.down.square")
                    .font(.title)
                    
                    // Since we're in an overlay, we use a color
                    // (clear) to hide the chevron when it's not
                    // needed.
                    .foregroundColor(isDisplayingOrders != nil ? Color("G1") : .clear)
                    .padding(),
                
                alignment: .leading
            )
            .foregroundColor(Color("G1"))
            .background(Color("G4"))
        }.padding(0)
        //.background(Color.green)
    }
}

struct PageTitleView_Previews: PreviewProvider {
    static var previews: some View {
        PageTitleView(title: "Order Pizza")
    }
}
