//
//  EnxContentView.swift
//  EnxUIKitDemoApp
//
//  Created by EnableX on 08/01/25.
//
import SwiftUI

struct EnxContentView : View {
    @Environment(\.presentationMode) var presentationMode
     private var mToken : String
    
    init(_ token : String!){
        mToken = token
    }
    var body: some View {
        VStack{
            GeometryReader { geometry in
                EnxSDKViewWrapper(inputArgument: ["token" : mToken],width: geometry.size.width, height: geometry.size.height,
                    onConnected: {(enxRoom, roomMetadata) in},
                    onDisconnected: {reason in presentationMode.wrappedValue.dismiss()},
                    onConnectError: {reason in presentationMode.wrappedValue.dismiss()
                })
                
            }
            Spacer()
        }.navigationBarHidden(true)
    }
}
#Preview {
    EnxContentView("token")
}
