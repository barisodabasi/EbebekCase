//
//  BannerComponent.swift
//  EbebekCase
//
//  Created by BarisOdabasi on 13.02.2022.
//

import Foundation


struct BannerComponent: Codable {
    var container: String?
    var uid: String?
    var name: String
    var synchronizationBlocked: String?
    var media: Media
    var uuid: String?
    var urlLink: String?
    var typeCode: String?
}
