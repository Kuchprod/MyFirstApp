//
//  DetailViewController.swift
//  MyFirstApp
//
//  Created by Jonas Kucharz on 03/03/2016.
//  Copyright © 2016 Jonas Kucharz. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    var contact : Contact = Contact()
    
    @IBOutlet weak var myScroll: UIScrollView!
    
    @IBOutlet weak var nameView: UIView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var forename: UILabel!
    
    @IBOutlet weak var imageView: UIView!
    @IBOutlet weak var image: UIImageView!
    
    
    @IBOutlet weak var infoView: UIView!
    @IBOutlet weak var addr: MapButton!
    @IBOutlet weak var phone: CallButton!
    @IBOutlet weak var mail: MailButton!
    @IBOutlet weak var webSite: myButton!
    @IBOutlet weak var desk: UILabel!
    
    
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
            forename.text = contact.forename
        }
        if let image = self.image {
            if contact.picture != "" {
                let url = NSURL(string: contact.picture)
                let data = NSData(contentsOfURL: url!)
                let myImage = UIImage(data: data!)
                image.image = myImage
            }
        }
        if let mail = self.mail {
            checkButton(mail, text: contact.mail)
        }
        if let phone = self.phone {
            checkButton(phone, text: contact.phone)
        }
        if let addr = self.addr {
            checkButton(addr, text: contact.address)
        }
        if let desk = self.desk {
            desk.text = contact.desk
        }
        if let webSite = self.webSite {
            checkButton(webSite, text: contact.website)
        }
    }
    
    private func checkButton(sender: UIButton, text: String){
        sender.setTitle("", forState:  .Normal)
        if text != "NC" {
            sender.setTitle(text, forState:  .Normal)
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
    
    /*
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    // Get the new view controller using segue.destinationViewController.
    // Pass the selected object to the new view controller.
    }
    */

}

