//
//  DetailViewController.swift
//  MyFirstApp
//
//  Created by Jonas Kucharz on 03/03/2016.
//  Copyright © 2016 Jonas Kucharz. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    var contact = Contact()
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var forename: UILabel!
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var mail: UILabel!

    var detailItem: AnyObject? {
        didSet {
            // Update the view.
            self.configureView()
        }
    }

    func configureView() {
        // Update the user interface for the detail item.
        if let detail = self.detailItem as? Contact {
            /*if let image = self.image {
                let url = NSURL(string: detail.description)
                let data = NSData(contentsOfURL: url!)
                image.image = UIImage(data: data!)
            }*/
            if let name = self.name {
                name.text = detail.name
            }
            /*
            if let email = mail {
                let email = detail.mail
                let url = NSURL(string: "mailto:\(email)")
                UIApplication.sharedApplication().openURL(url)
            }
*/
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.configureView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

