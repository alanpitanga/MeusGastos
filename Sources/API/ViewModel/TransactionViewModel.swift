//
//  TransactionViewModel.swift
//  MeusGastos
//
//  Created by Alan Pitanga on 28/01/24.
//

import Foundation

typealias TransactionsViewModel = [TransactionModel]
struct TransactionViewModel {
    let model: TransactionModel
    
    init(withModel model: TransactionModel) {
        self.model = model
    }
    
    var id: Int {
        model.id ?? 0
    }
    
    var name: String {
        model.name ?? String.empty
    }
    
    var category: CategoryViewModel {
        CategoryViewModel(withModel: model.category ?? CategoryModel())
    }
    
    var date: Date {
        model.date ?? Date()
    }
    
    var amount: Double {
        model.amount ?? 0
    }
    
    var uid: String {
        model.uid ?? String.empty
    }
    
    var type: TypeEntry {
        model.type == 0 ? TypeEntry.Input : TypeEntry.Output
    }
    
    func mock() -> TransactionsViewModel {
        var mocks = TransactionsViewModel()
        
        mocks.append(TransactionModel(id: 1, name: "Salario",
                                      category: CategoryModel(id: 2,
                                                              name: "Salario do mes",
                                                              about: "", uid: "CodandoComMoa"),
                                      date: Date(),
                                      amount: 5000,
                                      uid: "CodandoComMoa",
                                      type: 0))
        
        return mocks
    }
}
