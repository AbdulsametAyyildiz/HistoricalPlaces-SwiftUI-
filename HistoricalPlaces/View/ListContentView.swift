//
//  ContentView.swift
//  HistoricalPlaces
//
//  Created by Abdussamed on 7.08.2021.
//

import SwiftUI

struct ListContentView: View {
    var body: some View {
        
        NavigationView{
            List(historicalPlacesArray) { place in
                
                NavigationLink(
                    destination: DetailView(selectedPlace: place),
                    label: {
                        
                        Image(place.imageName)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: UIScreen.main.bounds.width * 0.4,
                                   height: UIScreen.main.bounds.height * 0.10,
                                   alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .clipShape(Circle())
                            .overlay(Circle().stroke())
                            
                        Text(place.placeName)
                    })
                
            }.navigationTitle(Text("Historical Places"))
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ListContentView()
    }
}
