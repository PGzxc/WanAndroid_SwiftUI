//
//  ModelProtocol.swift
//  WanAndroid_SwiftUI
//
//  Created by zxc on 2023/6/12.
//

import Foundation

internal protocol ModelProtocol {
    
    func newJSONDecoder() -> JSONDecoder
    
    func newJSONEncoder() -> JSONEncoder
}

