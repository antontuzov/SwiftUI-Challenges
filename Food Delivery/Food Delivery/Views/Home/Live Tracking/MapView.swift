//
//  MapView.swift
//  Food Delivery
//
//  Created by Vinoth Vino on 04/12/19.
//  Copyright © 2019 Vinoth Vino. All rights reserved.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }
    
    func updateUIView(_ view: MKMapView, context: Context) {
        let coordinate = CLLocationCoordinate2D(latitude: 34.011286, longitude: -116.166868)
        let span = MKCoordinateSpan(latitudeDelta: 1.0, longitudeDelta: 1.0)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        view.setRegion(region, animated: true)
    }
}

struct MapView_Previews : PreviewProvider {
    static var previews: some View {
        MapView()
    }
}

