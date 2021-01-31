//
//  widget_alert.swift
//  snowie_learner
//
//  Created by yosuke-kurosu on 2020/12/28.
//

import Foundation

struct AlertError: Identifiable, CustomStringConvertible {
    var description: String{
        "title: \(title) \nmessage: \(message) \nok: \(ok)"
    }
    var id = UUID()
    let title: String
    let message: String
    let ok: String
}

