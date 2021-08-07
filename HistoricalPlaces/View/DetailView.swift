//
//  DetailView.swift
//  HistoricalPlaces
//
//  Created by Abdussamed on 7.08.2021.
//

import SwiftUI

struct DetailView: View {
    var selectedPlace: HistoricalPlacesModel
    var body: some View {
        VStack{
            MapView(coordinate: selectedPlace.placeLocation)
                .frame(height: UIScreen.main.bounds.height * 0.35)
            
            CustomImageView(imageName: selectedPlace.imageName)
                .offset(CGSize(width: 0, height: UIScreen.main.bounds.height * -0.11)).padding(.bottom,-100)
            
            VStack{
                
                Text(selectedPlace.placeName)
                    .font(.largeTitle)
                    .foregroundColor(.orange)
                
                Text(selectedPlace.placeCity)
                    .padding()
                    .foregroundColor(.accentColor)
                    .font(.title3)
                
                Text(String(selectedPlace.placeBuildingYear))
                    .font(.title3)
                    .foregroundColor(.red)
                
                Text("Built by \(selectedPlace.placeBuilder)")
                    .padding()
                
            }.padding()
            
        }.offset(CGSize(width: 0, height: UIScreen.main.bounds.height * -0.03))
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(selectedPlace: tacMahal)
    }
}
