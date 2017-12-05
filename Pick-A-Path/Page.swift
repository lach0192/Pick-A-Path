//
//  Page.swift
//  Pick-A-Path
//
//  Created by Eric Lachapelle on 2017-12-04.
//  Copyright © 2017 Eric Lachapelle. All rights reserved.
//

import Foundation

class Page {
    
    var pageNumber: Int
    var pageText: String
    var pageChoiceA: Page?
    var pageChoiceB: Page?
    
    init(){
        pageNumber = 0
        pageText = ""
    }
}
