//
//  TransactionModel.swift
//  MeusGastos
//
//  Created by Alan Pitanga on 28/01/24.
//

import Foundation

struct TransactionModel: Codable {
    let id: Int?
    let name: String?
    let category: CategoryModel?
    let date: Date?
    let amount: Double?
    let uid: String?
    let type: Int?
}
