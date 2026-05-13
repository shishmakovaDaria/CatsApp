//
//  Set+Ext.swift
//  CatsApp
//
//  Created by Дарья Шишмакова on 03.04.2026.
//

import Foundation

extension Set {
    mutating func toggle(_ element: Element) {
        if contains(element) {
            remove(element)
        } else {
            insert(element)
        }
    }
}
