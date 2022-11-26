//
//  Park.swift
//  ThemeParks
//
//  Created by Oren Leavitt on 11/25/22.
//

import Foundation
import MapKit

struct Park: Identifiable, Equatable {
    
    var name: String
    var city: String
    var state: String
    var coordinates: CLLocationCoordinate2D
    var link: String
    
    var id: String {
        return name + city + state
    }
    
    static func == (lhs: Self, rhs: Self) -> Bool {
        return rhs.id == lhs.id
    }
}
