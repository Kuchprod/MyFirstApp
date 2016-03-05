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
    @IBOutlet weak var phone: UILabel!
    @IBOutlet weak var desk: UILabel!
    @IBOutlet weak var webLink: UILabel!

    @IBOutlet weak var address: UILabel!
    var detailItem: AnyObject? {
        didSet {
            // Update the view.
            self.configureView()
        }
    }

    func configureView() {
        // Update the user interface for the detail item.
        if let name = self.name {
            name.text = contact.name
        }
        if let forename = self.forename {
            forename.text = contact.name
        }
        if let image = self.image {
            Swift.print(contact.picture)
            if contact.picture == "" {
                image.image = UIImage(named: "Silhouette_Portrait")
            }
            else{
                let url = NSURL(string: contact.picture)
                let data = NSData(contentsOfURL: url!)
                let myImage = UIImage(data: data!)
                image.image = myImage
            }
        }
        if let email = self.mail {
            email.text = contact.mail
        }
        if let phone = self.phone {
            phone.text = contact.phone
        }
        if let desk = self.desk {
            desk.text = contact.desk
        }
        if let webLink = self.webLink {
            webLink.text = contact.website
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

