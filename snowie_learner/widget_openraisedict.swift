//
//  widget_openraisedict.swift
//  snowie_learner
//
//  Created by yosuke-kurosu on 2020/12/28.
//

import Foundation

var open_raise_dict: [String: Array<String>] = [
    "UTG":[
        "AA", "AKs", "AQs", "AJs", "ATs", "A9s", "A8s", "A7s", "A6s", "A5s", "A4s", "A3s", "A2s",
        "AKo", "KK", "KQs", "KJs", "KTs", "K9s",
        "AQo", "KQo", "QQ", "QJs", "QTs",
        "AJo", "KJo",       "JJ",  "JTs", "J9s",
        "ATo",                      "TT", "T9s",
                                          "99",
                                                "88",
                                                      "77",
                                                            "66",
                                                                  "55"
         ],
    "MP":[
        "AA", "AKs", "AQs", "AJs", "ATs", "A9s", "A8s", "A7s", "A6s", "A5s", "A4s", "A3s", "A2s",
        "AKo", "KK", "KQs", "KJs", "KTs", "K9s",
        "AQo", "KQo", "QQ", "QJs", "QTs", "Q9s",
        "AJo", "KJo", "QJo", "JJ", "JTs", "J9s",
        "ATo", "KTo",              "TT",  "T9s",
                                          "99",
                                                 "88",
                                                       "77",
                                                              "66",
                                                                    "55",
                                                                          "44"
        ],
    "CUTOFF":[
        "AA", "AKs", "AQs", "AJs", "ATs", "A9s", "A8s", "A7s", "A6s", "A5s", "A4s", "A3s", "A2s",
        "AKo", "KK", "KQs", "KJs", "KTs", "K9s", "K8s", "K7s", "K6s",
        "AQo", "KQo", "QQ", "QJs", "QTs", "Q9s", "Q8s",
        "AJo", "KJo", "QJo", "JJ", "JTs", "J9s",
        "ATo", "KTo", "QTo", "JTo", "TT", "T9s", "T8s",
        "A9o",                            "99", "98s", "97s",
                                                 "88", "87s",
                                                       "77", "76s",
                                                              "66", "65s",
                                                                    "55", "54s",
                                                                           "44",
                                                                                 "33",
                                                                                        "22"
        ],
    "BUTTON":[
        "AA", "AKs", "AQs", "AJs", "ATs", "A9s", "A8s", "A7s", "A6s", "A5s", "A4s", "A3s", "A2s",
        "AKo", "KK", "KQs", "KJs", "KTs", "K9s", "K8s", "K7s", "K6s", "K5s", "K4s", "K3s", "K2s",
        "AQo", "KQo", "QQ", "QJs", "QTs", "Q9s", "Q8s", "Q7s", "Q6s", "Q5s",
        "AJo", "KJo", "QJo", "JJ", "JTs", "J9s", "J8s", "J7s",
        "ATo", "KTo", "QTo", "JTo", "TT", "T9s", "T8s", "T7s",
        "A9o", "K9o", "Q9o", "J9o", "T9o", "99", "98s", "97s", "96s",
        "A8o",                                    "88", "87s", "86s", "85s",
        "A7o",                                          "77",  "76s", "75s",
        "A6o",                                                  "66", "65s", "64s",
        "A5o",                                                         "55", "54s",
        "A4o",                                                                "44",
                                                                                   "33",
                                                                                        "22"
        ],
    "SB":[
        "AA", "AKs", "AQs", "AJs", "ATs", "A9s", "A8s", "A7s", "A6s", "A5s", "A4s", "A3s", "A2s",
        "AKo", "KK", "KQs", "KJs", "KTs", "K9s", "K8s", "K7s", "K6s", "K5s", "K4s", "K3s", "K2s",
        "AQo", "KQo", "QQ", "QJs", "QTs", "Q9s", "Q8s", "Q7s", "Q6s", "Q5s", "Q4s", "Q3s", "Q2s",
        "AJo", "KJo", "QJo", "JJ", "JTs", "J9s", "J8s", "J7s", "J6s", "J5s",
        "ATo", "KTo", "QTo", "JTo", "TT", "T9s", "T8s", "T7s", "T6s",
        "A9o", "K9o", "Q9o", "J9o", "T9o", "99", "98s", "97s", "96s",
        "A8o", "K8o", "T8o", "98o", "88", "87s", "86s", "85s",
        "A7o", "77", "76s", "75s", "74s",
        "A6o", "66", "65s", "64s",
        "A5o", "55", "54s", "53s",
        "A4o", "44", "43s",
        "A3o", "33", "22"
        ]
]

