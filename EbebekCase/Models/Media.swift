//
//  Media.swift
//  EbebekCase
//
//  Created by BarisOdabasi on 13.02.2022.
//

import Foundation


struct Media: Codable {
    var mobile: Mobile
}

struct Mobile: Codable {
    var code: String?
    var mime: String?
    var url: URL
}
