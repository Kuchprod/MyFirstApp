//
//  Parse.swift
//  MyFirstApp
//
//  Created by Jonas Kucharz on 03/03/2016.
//  Copyright © 2016 Jonas Kucharz. All rights reserved.
//

import Foundation


class Parse : NSObject, NSXMLParserDelegate {
    
	
	var o = [Contact]()
	var element = String()
    var contact : Contact = Contact()
	
	var name = ""
	var forename = ""
	var mail = ""
	var desk = ""
	var address = ""
	var phone = ""
	var website = ""
	var picture = ""
	
	
    func goParsing() -> [Contact]{
		if let parser = NSXMLParser(contentsOfURL: NSURL(string: "https://www.irif.univ-paris-diderot.fr/~yunes/xml/teachers.xml")!) {
			parser.delegate = self
			parser.parse()
		}
		return o
    }
    
    func parser(parser: NSXMLParser, didStartElement elementName: String, namespaceURI: String?, qualifiedName qName: String?, attributes attributeDict: [String : String]){
        element = elementName
        //Swift.print("title = \(element)")
        if (elementName as NSString).isEqualToString("teacher"){
            //Swift.print("\n(didStartElement) New Person")
        }
    }
    
    func parser(parser: NSXMLParser, foundCharacters string: String){
		
        if element == "name" {
            name += string
        }
        else if element == "forename" {
            forename += string
        }
		else if element == "mail" {
            mail += string
        }
		else if element == "desk" {
            desk += string
        }
		else if element == "address" {
            address += string
        }
		else if element == "phone" {
            phone += string
        }
		else if element == "website" {
			website += string
        }
		else if element == "picture" {
            picture += string
        }
    }
	
	func cleanString(string: String) -> String {
		return string.stringByTrimmingCharactersInSet(
			NSCharacterSet.whitespaceAndNewlineCharacterSet())
	}
	
	func cleanAll(){
		self.name = cleanString(self.name)
		self.forename = cleanString(self.forename)
		self.mail = cleanString(self.mail)
		self.desk = cleanString(self.desk)
		self.address = cleanString(self.address)
		self.phone = cleanString(self.phone)
		self.website = cleanString(self.website)
		self.picture = cleanString(self.picture)
		
	}
    
    func parser(parser: NSXMLParser, didEndElement elementName: String, namespaceURI: String?, qualifiedName qName: String?){
		
        if (elementName as NSString).isEqualToString("teacher") {
			//Swift.print("didEndElement\n")
			cleanAll()
			
			contact = Contact(name: self.name, forename: self.forename, mail: self.mail, desk: self.desk, address: self.address, phone: self.phone, website: self.website, picture: self.picture)
			
			name = ""
			forename = ""
			mail = ""
			desk = ""
			address = ""
			phone = ""
			website = ""
			picture = ""
			
			//Swift.print(contact.description)
			o.append(contact)
        }
    }
    
    
}