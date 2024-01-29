//
//  CategoryViewModel.swift
//  MeusGastos
//
//  Created by Alan Pitanga on 28/01/24.
//

import Foundation

typealias CategoriesViewModel = [CategoryViewModel]
class CategoryViewModel {
    let model: CategoryModel
    
    init(withModel model: CategoryModel) {
        self.model = model
    }
    
    var id: Int {
        model.id ?? 0
    }
    
    var name: String {
        model.name ?? String.empty
    }
    
    var about: String {
        model.about ?? String.empty
    }
    
    var uid: String {
        model.uid ?? String.empty
    }
    
    func mock() -> CategoriesViewModel {
        var mocks = CategoriesViewModel()
        mocks.append(CategoryViewModel.init(withModel: CategoryModel.init(id: 1,
                                                                          name: "Contas Fixas",
                                                                          about: "Contas que se paga durante o mês",
                                                                          uid: "CodandoComMoa")))
        return mocks
    }
}
