//
//  PullRequestView.swift
//  SwiftUIButtonStyles
//
//  Created by Ramill Ibragimov on 31.10.2020.
//

import SwiftUI

struct PullRequestView: View {
    
    let name: String
    let appName: String
    let pullRequestID: Int
    let sourceBranch: String
    let destinationBranch: String
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Image(systemName: "applelogo")
                Text(appName)
                    .font(.subheadline)
                Text("#" + pullRequestID.description)
                    .font(.footnote)
                    .foregroundColor(.green)
            }.padding()
            Text(name)
                .font(.headline)
                .padding(.top)
            HStack {
                Text(sourceBranch)
                Image(systemName: "arrow.right")
                    .foregroundColor(.green)
                Text(destinationBranch)
            }
            Spacer()
            Button(action: {
                
            }, label: {
                Text("Merge Pull Request")
            }).buttonStyle(PrimaryButtonStyle(backgroundColor: Color.green))
        }
    }
}

struct PrimaryButtonStyle: ButtonStyle {
    let backgroundColor: Color
    
    func makeBody(configuration: Configuration) -> some View {
        return configuration.label
            .padding()
            .background(backgroundColor)
            .foregroundColor(.white)
            .clipShape(RoundedRectangle(cornerRadius: 8))
            .padding()
    }
}
