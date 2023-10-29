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
        ZStack(alignment: .trailing) {
            startSlideShow()
//                .frame(width: 900, height: 1000)

            Toggle("", isOn: $value)
                .frame(width: 700)
                .onChange(of: value) { newValue in
                    if value == true {
                        musicPlayer.play()
                    }else {
                        musicPlayer.stop()
                    }
                }
        }
    }
}

let images: [UIImage] = [UIImage(named:"forest1")!,
                         UIImage(named:"forest2")!,
                         UIImage(named:"forest3")!]

let imageSlides = UIImage.animatedImage(with: images, duration: 300.0)

struct startSlideShow: UIViewRepresentable {
    
    func makeUIView(context: Self.Context) -> UIView {
        
        let myView = UIView(frame: CGRect(x: 0, y: 0, width: .max, height: .max))
        let myImage = UIImageView(frame: CGRect(x: -100, y: 0, width: 950, height: 600))
        myImage.contentMode = UIView.ContentMode.scaleAspectFit
        myImage.image = imageSlides
        myView.addSubview(myImage)
        
        return myView
    }
    
    func updateUIView(_ uiView: UIView, context: UIViewRepresentableContext<startSlideShow>) {
        print("updated!")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewLayout(.fixed(width: 1500, height: 650))
    }
}
