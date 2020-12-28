//
//  MenuListView.swift
//  HuliPizza
//
//  Created by Gregory Shields on 12/21/20.
//

import SwiftUI

struct MenuListView: View {
    var body: some View {
        VStack {
            ListHeaderView(text: "Menu")
            List(0 ..< 5) { item in
                MenuRowView()
            }
        }
    }
}

struct MenuListView_Previews: PreviewProvider {
    static var previews: some View {
        MenuListView()
    }
}
