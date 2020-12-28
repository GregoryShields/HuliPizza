//
//  OrderRowView.swift
//  HuliPizza
//
//  Created by Gregory Shields on 12/23/20.
//

import SwiftUI

struct OrderRowView: View {
    var body: some View {
        HStack {
            Text("Your Order Item Here")
                .font(.headline) // Headline is a slightly bold style.
                //.fontWeight(.bold) // Here's how to do just bold.
            Spacer()
            Text("$0.00").bold() // Bold is really common, so you can do this.
        }
    }
}

struct OrderRowView_Previews: PreviewProvider {
    static var previews: some View {
        OrderRowView()
            // Here's what it would look like if your user were to go
            // into accessibility settings and change to a very large font.
            .environment(\.sizeCategory, .accessibilityExtraExtraLarge)
            // You can see that it gets really large, but it does just wrap,
            // which is good.
    }
}
