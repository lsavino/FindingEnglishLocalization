//
//  ViewController.swift
//  FindingEnglishLocalization
//
//  Created by Laura Savino on 5/6/15.
//  Copyright (c) 2015 Laura Savino. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	let helloLabel = UILabel()
	let localeLabel = UILabel()

	override func loadView() {
		super.loadView()

		view.addSubview(helloLabel)
		view.addSubview(localeLabel)

		helloLabel.setTranslatesAutoresizingMaskIntoConstraints(false)
		localeLabel.setTranslatesAutoresizingMaskIntoConstraints(false)

		let viewsDict = [ "hello" : helloLabel, "locale" : localeLabel ]
		view.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("V:|-(100)-[hello(>=50)]-(30)-[locale(>=50)]-(>=100)-|", options: .AlignAllCenterX, metrics: nil, views: viewsDict))
		let centeredHorizontalConstraint = NSLayoutConstraint(item: self.view, attribute: .CenterX, relatedBy: .Equal, toItem: helloLabel, attribute: .CenterX, multiplier: 1, constant: 0)
		view.addConstraint(centeredHorizontalConstraint)
	}

	override func viewDidLoad() {
		super.viewDidLoad()

		helloLabel.text = NSLocalizedString("Hello friends", comment: "A greeting to friends")
		localeLabel.text = NSLocale.autoupdatingCurrentLocale().objectForKey(NSLocaleLanguageCode) as! String

	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}


}

