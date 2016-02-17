//
//  KeyboardViewController.swift
//  CalKeyboard
//
//  Created by Gene Yoo on 9/15/15.
//  Copyright © 2015 iOS Decal. All rights reserved.
//

import UIKit

class KeyboardViewController: UIInputViewController {

    @IBOutlet var nextKeyboardButton: UIButton!
    
    var keyboardView: UIView!

    @IBOutlet weak var SecretLabel: UILabel!
    
    var awesomeBool: Bool = false
    
    override func updateViewConstraints() {
        super.updateViewConstraints()
    
        // Add custom view sizing constraints here
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        loadInterface()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated
    }

    override func textWillChange(textInput: UITextInput?) {
        // The app is about to change the document's contents. Perform any preparation here.
    }

    override func textDidChange(textInput: UITextInput?) {
        // The app has just changed the document's contents, the document context has been updated.
    }
    
    @IBAction func createNewline(sender: UIButton){
        textDocumentProxy.insertText("\n")
    }
    
    @IBAction func deleteChar(sender: UIButton){
        textDocumentProxy.deleteBackward()
    }
 
    
    @IBAction func dankItUp(sender: UIButton){
        let randInt = Int(arc4random_uniform(6))
        switch randInt{
        case 0:
            textDocumentProxy.insertText("much wow")
        case 1:
            textDocumentProxy.insertText("rarest of pepes")
        case 2:
            textDocumentProxy.insertText("420 blaze it")
        case 3:
            textDocumentProxy.insertText("EECS")
        case 4:
            textDocumentProxy.insertText("5/7")
        case 5:
            textDocumentProxy.insertText("2/10 would dank again")
        default:
            textDocumentProxy.insertText("wut duh")
        }

    }
    
    //could not figure out how to send images
//    @IBAction func memeTastic(sender: UIButton){
//        
//    }
    
    @IBAction func foreignMemes(sender: UIButton){
        let randInt = Int(arc4random_uniform(6))
        switch randInt{
        case 0:
            textDocumentProxy.insertText("红老外")
        case 1:
            textDocumentProxy.insertText("차가와서")
        case 2:
            textDocumentProxy.insertText("4649")
        case 3:
            textDocumentProxy.insertText("un deux trois - quatre cinq")
        case 4:
            textDocumentProxy.insertText("Eso, si que es")
        case 5:
            textDocumentProxy.insertText("")
        default:
            textDocumentProxy.insertText("wut duh")
        }
        
    }
    
    
    @IBAction func playVideo(sender: UIButton){
       textDocumentProxy.insertText("https://www.youtube.com/watch?v=1ExuxDEXWgQ\n")
        
    }
    
    //For some reason does this not work and crashes my keyboard =(
//    @IBAction func secretKey(sender: UIButton){
//        if (!awesomeBool){
//            SecretLabel.text = "OPEN THIS IN SAFARI"
//            awesomeBool = true
//        } else{
//            textDocumentProxy.insertText("https://www.youtube.com/watch?v=1ExuxDEXWgQ\n")
//            awesomeBool = false
//            SecretLabel.text = "Secret"
//        }
//    }
    
    
    @IBAction func addSpace(sender: UIButton){
        textDocumentProxy.insertText(" ")
    }

    func loadInterface() {
        let keyboardNib = UINib(nibName: "Keyboard", bundle: nil)
        keyboardView = keyboardNib.instantiateWithOwner(self, options: nil)[0] as! UIView
        keyboardView.frame = view.frame
        view.addSubview(keyboardView)
        view.backgroundColor = keyboardView.backgroundColor
        nextKeyboardButton.addTarget(self, action: "advanceToNextInputMode", forControlEvents: .TouchUpInside) // advanceToNextInputMode is already defined in template
        keyboardView.backgroundColor = UIColor.brownColor()
    }


}
