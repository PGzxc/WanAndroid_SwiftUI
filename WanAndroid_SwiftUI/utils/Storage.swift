//
//  Storage.swift
//  WanAndroid_SwiftUI
//
//  Created by zxc on 2023/6/12.
//

import Foundation
import SwiftUI

public class Storage: ObservableObject {
    public static let shared = Storage()
    
    @AppStorage("setCookie") public var setCookie = ""
     
}
