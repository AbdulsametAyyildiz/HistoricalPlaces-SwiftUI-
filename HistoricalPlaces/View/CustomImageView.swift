//
//  CustomImageView.swift
//  HistoricalPlaces
//
//  Created by Abdussamed on 7.08.2021.
//

import SwiftUI

struct CustomImageView: View {
    let imageName : String
    var body: some View {
        Image(imageName)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.gray,lineWidth: 4))
            .shadow(radius:16)
            .frame(width: UIScreen.main.bounds.width,
                   height: UIScreen.main.bounds.height * 0.3,
                   alignment: .center)
    }
}

struct CustomImageView_Previews: PreviewProvider {
    static var previews: some View {
        CustomImageView(imageName: "cıragan")
    }
}
