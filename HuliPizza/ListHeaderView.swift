//
//  ListHeaderView.swift
//  HuliPizza
//
//  Created by Gregory Shields on 12/24/20.
//

import SwiftUI


struct ListHeaderView: View {
    var text: String
    
    var body: some View {
        HStack {
            Text(text)
                .padding(.leading, 5)
                // [] is a "set marker",
                // needed with multiple values
                //.padding([.leading, .top],30)
                
                // Specify a named color from our assets.
                .foregroundColor(Color("G2"))
                //.foregroundColor(.accentColor) if you needed a link
                
                // Let's put this on the HStack instead so the entire
                // line is colored instead of just the Text element.
                //.background(Color("G4"))
            
            Spacer()
        }.background(Color("G4"))
    }
}

struct ListHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ListHeaderView(text: "Menu")
    }
}
