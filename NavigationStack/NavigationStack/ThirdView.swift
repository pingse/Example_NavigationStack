//
//  ThirdView.swift
//  Navigation
//
//  Created by 김용주 on 2023/06/08.
//

import SwiftUI

struct ThirdView: View {
    @Binding var path: NavigationPath
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        Button("이전") {
            dismiss()
        }
        Button("Final") {
            path.append("Final")
        }
    }
}


