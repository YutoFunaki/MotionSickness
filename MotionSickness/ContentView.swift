//
//  ContentView.swift
//  MotionSickness
//
//  Created by 船木勇斗 on 2023/02/20.
//

import SwiftUI
import AVFoundation

struct ContentView: View {
    let musicPlayer = try! AVAudioPlayer(data: NSDataAsset(name:"forestSound")!.data)
    @State private var value = true
    var body: some View {
        VStack {
            Text("酔い止めアプリ")
            
            Toggle("", isOn: $value).frame(width: 120)
                .onChange(of: value) { newValue in
                    musicPlayer.play()
                }
            
           
        }
        .onAppear {
            //musicPlayer.play()
            //musicPlayer.stop()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
