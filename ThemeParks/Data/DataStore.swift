//
//  DataStore.swift
//  ThemeParks
//
//  Created by Oren Leavitt on 11/25/22.
//

import Foundation
import MapKit

class DataStore {
    static let parks = [
    Park(name: "Six Flags Over Texas",
         city: "Arlington",
         state: "Texas",
         coordinates: CLLocationCoordinate2D(latitude: 32.7547264, longitude: -97.0711774),
         link: "https://www.sixflags.com/overtexas#")
    ]
}
