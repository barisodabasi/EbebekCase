//
//  HomeNetworkResponse.swift
//  EbebekCase
//
//  Created by BarisOdabasi on 11.02.2022.
//

import Foundation
import Alamofire
import SwiftyJSON

class HomeNetworkResponse {
    

static func getCarousel(completionHandler: @escaping (_ result: NetworkModel?, _ error: String?) -> Void){
 let baseUrl = URL(string: "https://www.mockachino.com/24ab0c21-e709-42/home")!
 
 AF.request(baseUrl).response { response in
     debugPrint(response)
     switch response.result {
     case .success(let jsonResult):
         print("getCarousel Response : \(jsonResult)")
         do{
             let userDataResponse = try JSONDecoder().decode(NetworkModel.self, from: try JSON(jsonResult!).rawData())
             if (response.response?.statusCode == 200){
                 completionHandler(userDataResponse, nil)
             }else {
                 completionHandler(nil, "HATAAAA")
             }
         } catch let error{
             print("getCarousel Json Parse Error : \(error)")
             completionHandler(nil, "\(error)")
         }
     case .failure(let error):
         print("getCarousel Request failed with error: \(error)")
     }
   }
 }
}
