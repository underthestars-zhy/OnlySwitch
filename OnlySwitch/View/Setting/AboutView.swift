//
//  AboutView.swift
//  OnlySwitch
//
//  Created by Jacklandrin on 2021/12/11.
//

import SwiftUI

struct AboutView: View {
    var body: some View {
        VStack {
            Image("only_switch")
                .resizable()
                .scaledToFit().frame(width: 100, height: 100)
            Spacer().frame(height:50)
            HStack(alignment:.bottom) {
                Text("Only Switch")
                    .fontWeight(.bold)
                    .font(.system(size: 30))
                Text("v\(SystemInfo.majorVersion as! String)")
                    .foregroundColor(Color(NSColor.lightGray))
                    .font(.system(size: 22))
            }
            HStack {
                Text("Copyright @ 2021 ")
                Link(destination: URL(string: "https://www.jacklandrin.com")!, label: {
                    Text("Jacklandrin")
                })
            }
            
        }
    }
}

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView()
    }
}
