//
//  SelectedImageView.swift
//  HuliPizza
//
//  Created by Gregory Shields on 12/26/20.
//

import SwiftUI

struct SelectedImageView: View {
    var imageName: String

    var body: some View {
        Image(imageName)
            .resizable()
            .scaledToFit()
            .cornerRadius(30)
            .shadow(color: .black, radius: 10, x: 5, y: 5)
            .padding(0)
    }
}

struct SelectedImageView_Previews: PreviewProvider {
    static var previews: some View {
        SelectedImageView(imageName: "1_250w")
    }
}
