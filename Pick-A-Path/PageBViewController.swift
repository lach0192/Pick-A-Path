//
//  PageBViewController.swift
//  Pick-A-Path
//
//  Created by Eric Lachapelle on 2017-12-04.
//  Copyright © 2017 Eric Lachapelle. All rights reserved.
//

import UIKit

class PageBViewController: UIViewController {
    
    var currentPage: Page? = Page()
    
    @IBOutlet weak var pageBTitle: UINavigationItem!
    @IBOutlet weak var pageBChoiceABtn: UIBarButtonItem!
    @IBOutlet weak var pageBChoiceBBtn: UIBarButtonItem!
    @IBOutlet weak var pageBText: UITextView!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
    }
    
    // Update each view's GUI in the viewWillAppear function for that view
    override func viewWillAppear(_ animated: Bool) {
        
        // display the current pageNumber value in the navItem's title
        pageBTitle.title = "Page " + (currentPage?.pageNumber.description)!
        
        // display the pageText in the textView
        pageBText.text = currentPage?.pageText
        
        // display the options in the barButtonItem's title text
        pageBChoiceABtn.title = "Option A"
        pageBChoiceBBtn.title = "Option B"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let nextViewController = segue.destination as? PageCViewController
        
        if sender as! String == "buttonA" {
            
            nextViewController?.currentPage = self.currentPage?.pageChoiceA
        }
        else if sender as! String == "buttonB" {
            
            nextViewController?.currentPage = self.currentPage?.pageChoiceB
        }
    }
    
    @IBAction func pageBChoiceAClicked(_ sender: Any) {
        
        performSegue(withIdentifier: "showPageC", sender: "buttonA")
    }
    
    @IBAction func pageBChoiceBClicked(_ sender: Any) {
        
        performSegue(withIdentifier: "showPageC", sender: "buttonB")
    }
}
