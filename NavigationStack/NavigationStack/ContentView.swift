//
//  ContentView.swift
//  Navigation
//
//  Created by 김용주 on 2023/06/08.
//

import SwiftUI

struct ContentView: View {
    @State private var path: NavigationPath = NavigationPath()
    
    var body: some View {
        NavigationStack(path: $path) {
            Button{
                path.append("Second")
            } label: {
                Text("SecondView")
            }
            .navigationDestination(for: String.self) { name in
                switch name{
                case "Second":
                    SecondView(path: $path)
                case "Third":
                    ThirdView(path: $path)
                case "Final":
                    FinalView(path: $path)
                default:
                    EmptyView()
                }
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
