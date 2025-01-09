//
//  EnxSDKViewWrapper.swift
//  EnxUIKitDemoApp
//
//  Created by jaykumar on 09/01/25.
//
import SwiftUI
import UIKit
import Enx_UIKit_iOS

struct EnxSDKViewWrapper : UIViewRepresentable{
    let inputArgument : [String : String]!
    let width: CGFloat
    let height: CGFloat
    let onConnected: (_ enxRoom : EnxRoom?, _ metaData : [String : Any]?) -> Void
    let onDisconnected: ([Any]?) -> Void
    let onConnectError :([Any]?) -> Void
    
    func makeUIView(context: Context) -> UIView {
        //SetUp Bottom options
        EnxSetting.shared.configureRequiredEventList(withList: [EnxRequiredEventsOption.audio.rawValue,EnxRequiredEventsOption.video.rawValue,EnxRequiredEventsOption.cameraSwitch.rawValue,EnxRequiredEventsOption.audioSwitch.rawValue,EnxRequiredEventsOption.disconnect.rawValue])
        //SetUp participant options
        EnxSetting.shared.configureParticipantList(to: [ParticipantListOptions.audio.rawValue,ParticipantListOptions.video.rawValue,ParticipantListOptions.disconnect.rawValue])
        
        let enxView = EnxVideoViewClass(token: inputArgument["token"]!, delegate: context.coordinator, embedUrl: "")
        return enxView
    }
    func updateUIView(_ uiView: UIView, context: Context) {
        uiView.frame = CGRect(x: 0, y: 0, width: width, height: height)
    }
    func makeCoordinator() -> Coordinator {
        Coordinator(onConnected: onConnected, onDisconnected: onDisconnected, onConnectError : onConnectError)
    }
    // Coordinator to handle SDK callbacks
    class Coordinator : NSObject,EnxVideoStateDelegate{
        let onConnected: (_ enxRoom : EnxRoom?, _ metaData : [String : Any]?) -> Void
        let onDisconnected: ([Any]?) -> Void
        let onConnectError :([Any]?) -> Void
        
        init(onConnected: @escaping (_: EnxRoom?, _: [String : Any]?) -> Void, onDisconnected: @escaping ([Any]?) -> Void, onConnectError: @escaping ([Any]?) -> Void) {
            self.onConnected = onConnected
            self.onDisconnected = onDisconnected
            self.onConnectError = onConnectError
        }
        // Delegate methods from the enablex Swift SDK
        func disconnect(response: [Any]?) {
            onDisconnected(response)
        }
        func connectError(reason: [Any]?) {
            onConnectError(reason)
        }
        func connect(toRoom enxRoom : EnxRoom? , roomMetadata: [String : Any]?) {
            onConnected(enxRoom, roomMetadata)
        }
    }
}
