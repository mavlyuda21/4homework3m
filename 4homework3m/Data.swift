//
//  Data.swift
//  4homework3m
//
//  Created by mavluda on 17/3/23.
//

import Foundation
import UIKit

struct Product {
    let id: Int
    let type: String
    let count: Int
    let image: String
    let details: ProductDetails
}

struct ProductDetails {
    let name: String
    let roomType: String
    let color: String
    let material: String
    let dimensions: String
    let weight: String
    let star: Int
    let price: String
}


