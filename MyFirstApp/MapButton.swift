//
//  MapButton.swift
//  MyFirstApp
//
//  Created by Jonas Kucharz on 06/03/2016.
//  Copyright © 2016 Jonas Kucharz. All rights reserved.
//

import UIKit

class MapButton: UIButton {

    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */
    
    required init(coder decoder: NSCoder) {
        super.init(coder: decoder)!
        self.addTarget(self, action: "pressed:", forControlEvents: .TouchUpInside)
        self.contentHorizontalAlignment = UIControlContentHorizontalAlignment.Left
    }
    
    func pressed(sender: UIButton!) {
        Swift.print("pressed")
        if let text = sender.titleLabel!.text {
            var addr = "http://maps.apple.com/?q=" + text
            addr = addr.stringByAddingPercentEscapesUsingEncoding(NSUTF8StringEncoding)!
            Swift.print("addr = \(addr)")
            UIApplication.sharedApplication().openURL(NSURL(string: addr)!)
        }
    }


}
