//
//  ContentView.swift
//  poke
//
//  Created by User16 on 2019/9/27.
//  Copyright © 2019 User16. All rights reserved.
//

import SwiftUI

struct ContentView: View {
 var body: some View {

 ZStack {

    Path(ellipseIn: CGRect(x: 100, y: 300, width: 200, height: 200))
        .fill(Color(red: 1, green: 0, blue: 0))

    
    
    Path { (path) in
        path.move(to: CGPoint(x: 100, y: 400))
        path.addLine(to: CGPoint(x: 300, y: 400))
        path.addQuadCurve(to: CGPoint(x: 200, y: 500), control:
            CGPoint(x: 300, y: 500))
        path.addQuadCurve(to: CGPoint(x: 100, y: 400), control:
        CGPoint(x: 100, y: 500))    }
    .fill(Color(red: 1, green: 1, blue: 1))
    
    Path(ellipseIn: CGRect(x: 100, y: 300, width: 200, height: 200))
    .stroke(Color(red: 0, green: 0, blue:0), lineWidth: 10)
    
    Path { (path) in
        path.move(to: CGPoint(x: 100, y: 400))
        path.addLine(to: CGPoint(x: 300, y: 400))}
        .stroke(Color(red: 0, green: 0, blue: 0), lineWidth: 20)
    Path(ellipseIn: CGRect(x: 175, y: 375, width: 50, height: 50))
    .fill(Color(red: 0, green: 0, blue: 0))
    Path(ellipseIn: CGRect(x: 180, y: 380, width: 40, height: 40))
    .fill(Color(red: 1, green: 1, blue: 1))
    Path(ellipseIn: CGRect(x: 187.5, y: 387.5, width: 25, height: 25))
        .stroke(Color(red: 0, green: 0, blue: 0), lineWidth: 2.5)    }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

