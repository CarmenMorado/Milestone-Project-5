//
//  DetailViewController.swift
//  Milestone Project 5
//
//  Created by Carmen Morado on 3/1/21.
//

import UIKit

class DetailViewController: UIViewController {
    var countryName: String?
    var capitalCity: String?
    var size:  String?
    var population:  String?
    var currency: String?
    var language: String?
    var flagName: String?
    var funFact: String?
    var capitalcityLabel: UILabel!
    var sizeLabel:  UILabel!
    var populationLabel:  UILabel!
    var currencyLabel: UILabel!
    var languageLabel: UILabel!
    var factLabel: UILabel!
    var countryFlag: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.font: UIFont(descriptor: UIFontDescriptor(name: "PartyLetPlain", size: 40), size: 40)]
        
        title = "\(String(describing: countryName!))"
        
        view = UIView()
        view.backgroundColor = .white
        
        countryFlag = UIImageView()
        countryFlag.translatesAutoresizingMaskIntoConstraints = false
        countryFlag.image = UIImage(named: flagName!)
        view.addSubview(countryFlag)

        capitalcityLabel = UILabel()
        capitalcityLabel.translatesAutoresizingMaskIntoConstraints = false
        capitalcityLabel.textAlignment = .left
        //capitalcityLabel.text?.contains(<#T##element: Character##Character#>)
        capitalcityLabel.text = "Capital city: \(capitalCity!)"
        //let s = "Eat @my shorts" as NSString
        //let att = NSMutableAttributedString(string: s as String)
        //let r = s.range(of: "@my", options: .regularExpression, range: NSMakeRange(0,s.length))
        //if r.length > 0 {
          //  att.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: r)
        //}
        capitalcityLabel.font = UIFont(name: capitalcityLabel.font.fontName, size: 25)
        view.addSubview(capitalcityLabel)
        
        sizeLabel = UILabel()
        sizeLabel.translatesAutoresizingMaskIntoConstraints = false
        sizeLabel.textAlignment = .left
        sizeLabel.text = "Size: \(size!)"
        sizeLabel.font = UIFont(name: sizeLabel.font.fontName, size: 25)
        view.addSubview(sizeLabel)
        
        populationLabel = UILabel()
        populationLabel.translatesAutoresizingMaskIntoConstraints = false
        populationLabel.textAlignment = .left
        populationLabel.text = "Population: \(population!)"
        populationLabel.font = UIFont(name: populationLabel.font.fontName, size: 25)
        view.addSubview(populationLabel)
        
        currencyLabel = UILabel()
        currencyLabel.translatesAutoresizingMaskIntoConstraints = false
        currencyLabel.textAlignment = .left
        currencyLabel.text = "Currency: \(currency!)"
        currencyLabel.font = UIFont(name: currencyLabel.font.fontName, size: 25)
        view.addSubview(currencyLabel)
        
        languageLabel = UILabel()
        languageLabel.translatesAutoresizingMaskIntoConstraints = false
        languageLabel.textAlignment = .left
        languageLabel.text = "Language: \(language!)"
        languageLabel.font = UIFont(name: languageLabel.font.fontName, size: 25)
        view.addSubview(languageLabel)
        
        factLabel = UILabel()
        factLabel.translatesAutoresizingMaskIntoConstraints = false
        factLabel.textAlignment = .left
        factLabel.text = "Fun fact: \(funFact!)"
        factLabel.textAlignment = .justified
        factLabel.font = UIFont(name: factLabel.font.fontName, size: 25)
        factLabel.numberOfLines = 9
        view.addSubview(factLabel)
        
        
        NSLayoutConstraint.activate([
            countryFlag.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor, constant: 20),
            countryFlag.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor),
            countryFlag.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor),
            countryFlag.heightAnchor.constraint(equalToConstant: 250),
            capitalcityLabel.topAnchor.constraint(equalTo: countryFlag.bottomAnchor, constant: 20),
            capitalcityLabel.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor),
            sizeLabel.topAnchor.constraint(equalTo: capitalcityLabel.bottomAnchor, constant: 10),
            sizeLabel.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor),
            populationLabel.topAnchor.constraint(equalTo: sizeLabel.bottomAnchor, constant: 10),
            populationLabel.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor),
            currencyLabel.topAnchor.constraint(equalTo: populationLabel.bottomAnchor, constant: 10),
            currencyLabel.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor),
            languageLabel.topAnchor.constraint(equalTo: currencyLabel.bottomAnchor, constant: 10),
            languageLabel.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor),
            factLabel.topAnchor.constraint(equalTo: languageLabel.bottomAnchor, constant: 10),
            factLabel.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor),
            factLabel.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor),
            factLabel.widthAnchor.constraint(equalToConstant: 400),
        ])
    }
}
