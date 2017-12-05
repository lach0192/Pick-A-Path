//
//  ViewController.swift
//  Pick-A-Path
//
//  Created by Eric Lachapelle on 2017-12-04.
//  Copyright © 2017 Eric Lachapelle. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var pageATitle: UINavigationItem!
    @IBOutlet weak var pageAChoiceABtn: UIBarButtonItem!
    @IBOutlet weak var pageAChoiceBBtn: UIBarButtonItem!
    @IBOutlet weak var pageAText: UITextView!
    
    var page1: Page? = Page()
    var page2: Page? = Page()
    var page3: Page? = Page()
    var page4: Page? = Page()
    var page5: Page? = Page()
    var page6: Page? = Page()
    var page7: Page? = Page()
    
    var currentPage: Page? = Page()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        page1?.pageNumber = 1
        page2?.pageNumber = 2
        page3?.pageNumber = 3
        page4?.pageNumber = 4
        page5?.pageNumber = 5
        page6?.pageNumber = 6
        page7?.pageNumber = 7
        
        page1?.pageText = "It is mid-afternoon on Friday the 13th. You have the biggest show of your life tonight so you decide to take a quick nap to gain some much needed energy for the evening..\r\rYou wake up covered in sweat.\rYou had that nightmare again.\r\rDeath comes to you during an energetic encore performance.\r\rSome time later..\r\r'Encore! Encore! Encore!', the crowd exclaims.\r\rOption A: Play encore.\rOption B: Leave stage."
        
        page2?.pageText = "You've dreamed of this moment too many times for the fear of death to stop you. Let's do this. You've saved the typical fan favorite track for this very situation.\r\rYou start to strum the guitar, and the rif soars through the audience. The crowd explodes in enjoyment. You've done it.\r\rYou get to the final fading chord of the track and you can already hear the audience chanting again..\r\r'Encore! Encore! Encore!'\r\rOption A: Play 2nd encore.\rOption B: Leave stage."
        
        page3?.pageText = "You'd be stupid to ignore the countless warnings of death. Let's get out of here.\r\rAs you arrive backstage a teenager with long dark hair approaches you smiling. \r\r'Can I have your autograph?!', he yells out.\r\rOption A: Sign his shirt.\rOption B: Ignore him."
        
        page4?.pageText = "A second encore..? This is too much. How has this never happened to you before?\r\rYou start to contemplate the situation.. Which track should we play?\r\rLet's let the audience decide. 'What do you want to hear?', you yell out to the crowd. But before the answer comes back to you the stage starts to spin. You fall to the floor, exhausted.\r\rThis is it.\r\rDeath has come to you..\r\rTHE END"
        
        page5?.pageText = "I played my encore, I'm still breathing, and the crowd loved it. Let's get out of here.\r\rAs you go backstage you hear someone familiar yelling your name.. You go towards the voice.\r\rIt leads to a dark door you've never seen before.\r\rYou knock once.\r\rThe door opens to a blinding light..\r\rYou wake up covered in sweat.\r\rTHE END"
        
        page6?.pageText = "'Of course you can buddy'.\r\rYou grab his t-shirt and a permanent marker.\r\r'What's your name?', I ask him.\r'Billy.' He replies.\r\rYou continue to sign his shirt and thank him for coming out.\r\rYou return home to your bed and fall asleep with a smile on your face.\r\rTHE END"
        
        page7?.pageText = "You walk right past him ignoring his question completely.\r\rA couple hours later as you're getting into the bus to go home there's a tap on your shoulder.\r\rYou turn around to see the long haired teenager smiling.\r\r'Goodbye', he whispers.\r\rA loud crash of intense power roars out into the night.\r\rYou fall to the ground.\r\rDeath has come to you.\r\rTHE END"
        
        page1?.pageChoiceA = page2
        page1?.pageChoiceB = page3
        page2?.pageChoiceA = page4
        page2?.pageChoiceB = page5
        page3?.pageChoiceA = page6
        page3?.pageChoiceB = page7
        
        currentPage = page1
    }
    
    // Update each view's GUI in the viewWillAppear function for that view
    override func viewWillAppear(_ animated: Bool) {
        
        // display the current pageNumber value in the navItem's title
        pageATitle.title = "Page " + (page1?.pageNumber.description)!
        
        // display the pageText in the textView
        pageAText.text = page1?.pageText
        
        // display the options in the barButtonItem's title text
        pageAChoiceABtn.title = "Option A"
        pageAChoiceBBtn.title = "Option B"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let nextViewController = segue.destination as? PageBViewController
        
        if sender as! String == "buttonA" {
    
            nextViewController?.currentPage = self.currentPage?.pageChoiceA
        }
        else if sender as! String == "buttonB" {
            
            nextViewController?.currentPage = self.currentPage?.pageChoiceB
        }
    }
    
    @IBAction func pageAChoiceAClicked(_ sender: Any) {
        
        performSegue(withIdentifier: "showPageB", sender: "buttonA")
    }
    
    @IBAction func pageAChoiceBClicked(_ sender: Any) {
        
        performSegue(withIdentifier: "showPageB", sender: "buttonB")
    }
}
