//
//  SwiftUIView.swift
//  WanAndroid_SwiftUI
//
//  Created by zxc on 2023/7/7.
//

import SwiftUI

struct SwiftUIView: View {
    @State var selectedOption = 0
    var options:[String] = ["0","1","2"]
    
    var body: some View {
        VStack {
            Picker("Options", selection: $selectedOption) {
//                Text("Option 1").tag(0)
//                Text("Option 2").tag(1)
//                Text("Option 3").tag(2)
                ForEach(0..<options.count,id:\.self){ index in
                    Text(options[index]).tag(index)
                }
            }
            .pickerStyle(SegmentedPickerStyle())
        }
        .onReceive([self.selectedOption].publisher.first()) { value in
            // 当选择值发生变化时执行操作
            print("Selected option: \(value)")
            
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
