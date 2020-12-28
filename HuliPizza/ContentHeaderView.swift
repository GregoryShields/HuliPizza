//
//  ContentHeaderView.swift
//  HuliPizza
//
//  Created by Gregory Shields on 12/21/20.
//

import SwiftUI

struct ContentHeaderView: View {
    var body: some View {
        VStack {
            ZStack {
                Image("Surf Board")
                    .resizable()
                    //.scaledToFit()
                    .frame(
                        minWidth: 300, idealWidth: 400, maxWidth: 400,
                        minHeight: 55, idealHeight: 100, maxHeight: 100,
                        alignment: .center)
//                    .background(Color.blue)
//                    .frame(
//                        minWidth: 300, idealWidth: 700, maxWidth: 900,
//                        minHeight: 100, idealHeight: 175, maxHeight: 200,
//                        alignment: .center)                    .background(Color.blue)
                // In this case I don't think the frame really helps the
                // logo because it ends up being too damn big.
                
                Text("Huli Pizza Company")
                    .offset(x: -20, y: 30)
                    //.font(.title)
                    // Use custom font instead of a scalable style
                    // if you want a fixed size font that won't be
                    // affected by accessibility settings.
                    // The dude in the video sets the 'size'
                    // property, but that won't work. There's a
                    // property called 'fixedSize' that will work,
                    // though.
                    // See the preview code below where we've put
                    // in code to simulate a user increasing the
                    // accessibility font size.
                    .font(Font.custom("Avenir-Black", fixedSize: 20))
                    .foregroundColor(.white)
            }
         }
        //.padding(0)
    }
}

struct ContentHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        // Enable this and you'll see that you do not want
        // to use a scalabe font for the logo because it
        // messes it up.
        ContentHeaderView()
            .environment(\.sizeCategory, .accessibilityExtraExtraLarge)
        // NOTE: The preview for custom fonts no longer works in newer
        // versions of Xcode. Even after importing them into the
        // project as shown in this article dated November 7, 2019,
        // the preview function for custom fonts still isn't working.
        // https://www.simpleswiftguide.com/how-to-use-custom-fonts-in-swift-ios-app-using-swiftui/
    }
}


