//
//  ViewModel.swift
//  ArchExamples
//
//  Created by Wilfred Furthado M on 08/07/19.
//  Copyright © 2019 Pervacio. All rights reserved.
//

import UIKit

class ViewModel: NSObject {
    
    var nameArray = [ArrayModel]()
    
    func intializeArray(completion: @escaping () -> Void) {
        nameArray.append(ArrayModel(name: "Wil", surname: "Furt"))
        nameArray.append(ArrayModel(name: "Will", surname: "Furth"))
        
        completion()
    }
    
    func numberOfRows() -> Int {
        return nameArray.count
    }
    
    func nameText(index: Int) -> String {
        return nameArray[index].name
    }
    
    func surnameText(index: Int) -> String {
        return nameArray[index].surname
    }
    
}
