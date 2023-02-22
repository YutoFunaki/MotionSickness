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
    var body: some View {
        VStack {
            Text("著作者：tawatchai07／出典：Freepik")
            Text("このアプリは音声が流れます。")
            
            Button("ボタンをタップ") {
                musicPlayer.play()
            }
            .buttonStyle(.borderedProminent)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
