//
//  HistoryListView.swift
//  HuliPizza
//
//  Created by Gregory Shields on 12/24/20.
//

import SwiftUI

struct HistoryListView: View {
    var body: some View {
        List(0 ..< 5) { item in
            HistoryRowView()
        }
        //.padding(0)
    }
}

struct HistoryListView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryListView()
    }
}
