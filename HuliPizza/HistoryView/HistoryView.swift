//
//  HistoryView.swift
//  HuliPizza
//
//  Created by Gregory Shields on 12/24/20.
//

import SwiftUI

struct HistoryView: View {
    var body: some View {
        VStack {
            ContentHeaderView()
            
            // Since the isDisplayingOrders argument
            // is optional, we don't have to supply it
            // here. And since we're not supplying it
            // here, its value stays at its default which
            // is nil and the code which displays a
            // chevron sets the color of the chevron to
            // 'clear', which means it will be invisible.
            PageTitleView(title: "Pizza History")
            
            SelectedImageView(imageName: "1_250w")        .padding(5)

            HistoryListView()
        }
    }
}

struct HistoryView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            HistoryView()
            
            HistoryView()
                .colorScheme(.dark)
                .background(Color.black)
        }
    }
}
