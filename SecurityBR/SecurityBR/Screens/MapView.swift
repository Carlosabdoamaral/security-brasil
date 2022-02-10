//
//  MapView.swift
//  SecurityBR
//
//  Created by Carlos Amaral on 24/01/22.
//

import SwiftUI
import MapKit

//-27.591534698843418, -48.52503916008313

struct MapView: View {
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(
            latitude: -27.591534698843418,
            longitude: -48.52503916008313),
        span: MKCoordinateSpan(
            latitudeDelta: 0.5,
            longitudeDelta: 0.5)
    )
    
    var body: some View {
        NavigationView {
            ZStack {
                Map(coordinateRegion: $region, showsUserLocation: true, userTrackingMode: .constant(.follow))
                    .frame(width: UIScreen.maxwidth, height: UIScreen.maxheight)
                    .edgesIgnoringSafeArea([.top, .horizontal])
            }
            .navigationTitle("Map")
        }
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
