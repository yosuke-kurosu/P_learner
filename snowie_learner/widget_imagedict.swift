//
//  widget_imagedict.swift
//  snowie_learner
//
//  Created by yosuke-kurosu on 2020/12/28.
//  TODO: SBのopen実装

import Foundation
import SwiftUI

var open_raise_image_dict = [
    "UTG": Image("UTG"),
    "MP": Image("MP"),
    "CUTOFF": Image("CO"),
    "BUTTON": Image("BTN"),
]


var face_raise_image_dict = [
    "MP":["UTG": Image("MP_UTG")],
    "CUTOFF":["UTG": Image("CO_UTG"),
               "MP": Image("CO_MP")],
    "BUTTON":["UTG": Image("BTN_UTG"),
              "MP": Image("BTN_MP"),
              "CUTOFF": Image("BTN_CO")],
    "SB":["UTG": Image("SB_UTG"),
          "MP": Image("SB_MP"),
          "CUTOFF": Image("SB_CO"),
          "BUTTON": Image("SB_BTN")],
    "BB":["UTG": Image("BB_UTG"),
          "MP": Image("BB_MP"),
          "CUTOFF": Image("BB_CO"),
          "BUTTON": Image("BB_BTN"),
          "SB": Image("BB_SB"),]
]

