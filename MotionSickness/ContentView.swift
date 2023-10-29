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
    @State private var value = false
    var body: some View {
        ZStack {
            Image("forest1")
                .resizable()
                .scaledToFill()

            
            Toggle("", isOn: $value).frame(width: 120)
                .onChange(of: value) { newValue in
                    if value == true {
                        musicPlayer.play()
                    }else {
                        musicPlayer.stop()
                    }
                }
            
           
        }
        .onAppear {
//            musicPlayer.play()
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
