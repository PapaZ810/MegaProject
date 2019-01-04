//
//  ViewController.swift
//  AlgorithmZac
//
//  Created by Durham, Zachary on 10/23/18.
//  Copyright © 2018 CTEC. All rights reserved.
//

import UIKit

public class AlgorithmViewController: UIViewController
{
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var algorithmText: UILabel!
    
    public override func viewDidLoad() -> Void
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        formatAlgorithm()
    }
    
    private func formatAlgorithm() -> Void
    {
        let title : String = "How to Create an App in XCode"
        
        let stepOne : String = "Open XCode and click create XCode project."
        let stepTwo : String = "Select Single View App and click next"
        let stepThree : String = "Call you app whatever you want(no spaces) and add an organization name then click next."
        let stepFour : String = "Save it to a new folder in your documents folder called iOSPlayground and deselect the create git repository on your mac option."
        let stepFive : String = "Now you have to make your MVC and resources folders. select the appdelegate file, the assets.xcassets and the Info.plist file right click then select new group from selection. Call that folder Resources. Then select the 2 storyboard files and put them into a new group from selection and call it View. select the controller file and and put it into a new group from selection called Controller. Then create a new file call it model and put a new swift file called SomethingTool.swift."
      
        // orders the steps and puts them into a variable
        
        let algorithm = [stepOne, stepTwo, stepThree, stepFour, stepFive]
        
        let attributesDictionary = [NSAttributedString.Key.font : algorithmText.font]
        let fullAttributedString = NSMutableAttributedString(string: title, attributes: attributesDictionary)
        
        for step in algorithm
        {
            let bullet: String = "👻"
            let formattedStep: String = "\n\(bullet) \(step)"
            let attributedStringStep : NSMutableAttributedString = NSMutableAttributedString(string: formattedStep)
            let outlineStyle = createOutlineStyle()
            
            attributedStringStep.addAttributes([NSAttributedString.Key.paragraphStyle : outlineStyle], range: NSMakeRange(0,attributedStringStep.length))
            
            fullAttributedString.append(attributedStringStep)
        }
    
    algorithmText.attributedText = fullAttributedString
    
    }
    
    
    
    private func createOutlineStyle() -> NSParagraphStyle
    {
        let outlineStyle : NSMutableParagraphStyle = NSMutableParagraphStyle()
        
        outlineStyle.alignment = .left
        outlineStyle.defaultTabInterval = 15
        outlineStyle.firstLineHeadIndent = 20
        outlineStyle.headIndent = 35
        
        return outlineStyle
    }
}

