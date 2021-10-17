//
//  ContentView.swift
//  uitest
//
//  Created by Daniel St Vincent on 10/15/21.
//

import SwiftUI
import RealityKit

struct ContentView: View {
    var models: [String] = ["01akar-icons_circle-plus","teapot", "02bi_question-circle", "t03bx_bx-save","04ei_camera","05whh_christmasstree"]
    var body: some View {
        ZStack(alignment: .bottom) {
            ARViewContainer()
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 30) {
                    
                    
                }
            }
        }
    }
}

struct ARViewContainer: UIViewRepresentable {
    func updateUIView(_ uiView: UIViewType, context: Context) {
        <#code#>
    }
    
    
    func makeUIView(context: Context) -> some UIView {
        
        let arView = ARView(frame: .zero)
        
        return arView
    }
}

