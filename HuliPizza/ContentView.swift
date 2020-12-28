//
//  ContentView.swift
//  HuliPizza
//
//  Created by Gregory Shields on 12/17/20.
//

// Our app consists of a menu, and an order each
// of which will be in an HStack. The menu and
// order items are the rows of two different
// UITableView objects which are created by
// making a List.

import SwiftUI

struct ContentView: View {
    @State var isMenuDisplayed: Bool = true
    
    var body: some View {
        VStack {
            ContentHeaderView().layoutPriority(2)
            
            Button(
                action: {
                    isMenuDisplayed.toggle()
                },
                label: {
                    PageTitleView(title: "Order Pizza", isDisplayingOrders: isMenuDisplayed)
                        .offset(x: 0, y: -10)
            })
            
            MenuListView()
                .layoutPriority(isMenuDisplayed ? 1.0 : 0.5)
            
            OrderListView()
                .layoutPriority(isMenuDisplayed ? 0.5 : 1.0)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            
            // This ContentView display whatever
            // device is selected in Xcode.
            ContentView()
            
            // This ContentView displays the
            // device specified below.
            ContentView()
                // We can use dark mode like this.
                .colorScheme(.dark)
                // Currently there's a bug that
                // causes dark mode not to work
                // and rather it just makes the
                // text invisible. Get around it
                // with explicit background color.
                .background(Color.black)
                
                // We can specify the phone to
                // preview on like this.
                .previewDevice("iPad Pro (9.7-inch)")
        }
    }
}
