//
//  Apicaller.swift
//  Pagination
//
//  Created by Karthiga on 02/03/24.
//

import Foundation
import UIKit
class Apicaller{
    
    func  fetchData(pagination: Bool = false, compliation: @escaping (Result<[String],Error>)-> Void){
        DispatchQueue.global().asyncAfter(deadline: .now() + 1, execute: {
            let originalData = [
                "apple",
                "sai",
                "kuhaan",
                "car",
                "banana",
                "milk",
                "cow",
                "apple",
                "sai",
                "kuhaan",
                "car",
                "banana",
                "milk",
                "cow",
                "apple",
                "sai",
                "kuhaan",
                "car",
                "banana",
                "milk",
                "cow"
                
            ]
            let newData = ["banna","org","app","eight"]
                
            
            compliation(.success(pagination ? newData: originalData))
        })
        
    }
}
