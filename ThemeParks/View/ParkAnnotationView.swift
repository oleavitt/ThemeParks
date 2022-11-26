//
//  ParkAnnotationView.swift
//  ThemeParks
//
//  Created by Oren Leavitt on 11/25/22.
//

import SwiftUI

struct ParkAnnotationView: View {
    var body: some View {
        let accentColor = Color(.orange)
        VStack(spacing: 0.0) {
            Image(systemName: "flag.checkered.circle")
                .resizable()
                .scaledToFill()
                .frame(width: 30, height: 30)
                .font(.headline)
                .foregroundColor(.white)
                .padding(6)
                .background(accentColor)
                .cornerRadius(36)
            Image(systemName: "triangle.fill")
                .resizable()
                .scaledToFill()
                .frame(width: 10, height: 10)
                .foregroundColor(accentColor)
                .rotationEffect(Angle(degrees: 180))
                .offset(y : -3)
                .padding(.bottom, 40)
        }
    }
}

struct ParkAnnotationView_Previews: PreviewProvider {
    static var previews: some View {
        ParkAnnotationView()
    }
}
