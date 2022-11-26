//
//  ContentView.swift
//  ThemeParks
//
//  Created by Oren Leavitt on 11/24/22.
//

import SwiftUI
import MapKit

struct ContentView: View {
    @EnvironmentObject private var vm: TPViewModel
    
    var body: some View {
        ZStack {
            Map(coordinateRegion: $vm.mapRegion,
                annotationItems: vm.parks) { park in
                MapAnnotation(coordinate: park.coordinates) {
                    ParkAnnotationView()
                        .scaleEffect(vm.currentPark == park ? 1 : 0.7)
                        .shadow(radius: 10)
                        .onTapGesture {
                            //vm.showNextLocation(location: location)
                        }
                }
            }
                .ignoresSafeArea()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(TPViewModel())
    }
}
