//
//  ContentView.swift
//  SwiftUIButtonStyles
//
//  Created by Ramill Ibragimov on 31.10.2020.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        PullRequestView(
            name: "Fixed SwiftUI Login",
            appName: "iPhone 12 mini",
            pullRequestID: 42,
            sourceBranch: "Development",
            destinationBranch: "Master"
        )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
