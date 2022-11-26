//
//  TPViewModel.swift
//  ThemeParks
//
//  Created by Oren Leavitt on 11/25/22.
//

import Foundation
import MapKit
import SwiftUI

class TPViewModel: ObservableObject {
    @Published var parks: [Park]
    
    @Published var currentPark: Park {
        didSet {
            visitPark(currentPark)
        }
    }

    @Published var mapRegion: MKCoordinateRegion = MKCoordinateRegion()
    let mapSpan = MKCoordinateSpan(latitudeDelta: 0.02, longitudeDelta: 0.02)

    init() {
        parks = DataStore.parks
        currentPark = DataStore.parks.first!
        visitPark(DataStore.parks.first!)
    }
    
    func visitPark(_ park: Park) {
        withAnimation(.easeInOut) {
            mapRegion = MKCoordinateRegion(center: park.coordinates,
                                           span: mapSpan)
        }
    }
}
