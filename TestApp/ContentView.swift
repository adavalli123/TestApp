//
//  ContentView.swift
//  TestApp
//
//  Created by Srikanth Adavalli on 5/4/23.
//

import SwiftUI
import TestPackageDependentOnAandB

struct ContentView: View {
    @State var dependentPackageOnAandB: TestPackageDependentOnAandB = TestPackageDependentOnAandB()
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text(verbatim: dependentPackageOnAandB.text)
            Text(verbatim: dependentPackageOnAandB.testPackageAText )
            Text(verbatim: dependentPackageOnAandB.testPackageBText )
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
