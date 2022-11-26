//
//  ThemeParksApp.swift
//  ThemeParks
//
//  Created by Oren Leavitt on 11/24/22.
//

import SwiftUI

@main
struct ThemeParksApp: App {
    @StateObject private var vm = TPViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(vm)
        }
    }
}
