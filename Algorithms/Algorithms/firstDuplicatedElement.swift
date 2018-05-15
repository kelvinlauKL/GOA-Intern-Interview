//
//  firstDuplicatedElement.swift
//  Algorithms
//
//  Created by Raymond Liu on 5/14/18.
//  Copyright © 2018 Raymond Liu. All rights reserved.
//

func firstDuplicatedElement(in array: [Int]) -> Int? {
    var indices: [Int: Int] = [:]
    var duplicates: [Int: Int] = [:]
    
    for i in 0..<array.count {
        if indices[array[i]] != nil && duplicates[i] == nil {
            duplicates.updateValue(array[i], forKey: indices[array[i]]!)
        }
        else if indices[array[i]] == nil {
            indices.updateValue(i, forKey: array[i])
        }
    }
    
    if duplicates.count > 0 {
        let duplicateMinKey = Array(duplicates.keys).min()
        if let firstDuplicate = duplicates[duplicateMinKey!]{
            return firstDuplicate
        }
    }
    
    return nil
}
