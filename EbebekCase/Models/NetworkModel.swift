//
//  NetworkModel.swift
//  EbebekCase
//
//  Created by BarisOdabasi on 11.02.2022.
//

import Foundation

struct NetworkModel: Codable {
    var uid: String?
    var uuid: String?
    var title: String?
    var template: String?
    var typeCode: String?
    var name: String?
    var robotTag: String?
    var contentSlots: ContentSlots
    var label: String?
}
