//
//  MapView.swift
//  HistoricalPlaces
//
//  Created by Abdussamed on 7.08.2021.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    var coordinate: CLLocationCoordinate2D
    func updateUIView(_ uiView: MKMapView, context: Context) {
        uiView.setRegion(MKCoordinateRegion(center: coordinate,
                                            span: MKCoordinateSpan(
                                                latitudeDelta: 0.02,
                                                longitudeDelta: 0.02)), animated: true)
    }
    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }
    
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(coordinate: historicalPlacesArray[4].placeLocation)
    }
}
