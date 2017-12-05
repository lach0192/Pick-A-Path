//
//  PageCViewController.swift
//  Pick-A-Path
//
//  Created by Eric Lachapelle on 2017-12-04.
//  Copyright © 2017 Eric Lachapelle. All rights reserved.
//

import UIKit

class PageCViewController: UIViewController {

    var currentPage: Page? = Page()
    
    @IBOutlet weak var pageCTitle: UINavigationItem!
    @IBOutlet weak var pageCRestartBtn: UIBarButtonItem!
    @IBOutlet weak var pageCText: UITextView!
    
    override func viewDidLoad() {
       
        super.viewDidLoad()
    }

    // Update each view's GUI in the viewWillAppear function for that view
    override func viewWillAppear(_ animated: Bool) {
        
        // display the current pageNumber value in the navItem's title
        pageCTitle.title = "Page " + (currentPage?.pageNumber.description)!
        
        // display the pageText in the textView
        pageCText.text = currentPage?.pageText
        
        // display the options in the barButtonItem's title text
        pageCRestartBtn.title = "Restart"
    }
    
    // restart from beginning
    @IBAction func restartBtnClicked(_ sender: Any) {
        
        navigationController?.popToRootViewController(animated: true)
    }
}
