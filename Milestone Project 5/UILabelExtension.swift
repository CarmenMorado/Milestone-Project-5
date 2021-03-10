//
//  UILabelExtension.swift
//  Milestone Project 5
//
//  Created by Carmen Morado on 3/5/21.
//

import UIKit

extension UILabel {
    
    func setAttribute(searchText: String, font: UIFont,color: UIColor = .blue) {
        guard let labelText = self.text else { return }
        do {
            let mutableString = NSMutableAttributedString(string: labelText)
            let regex = try NSRegularExpression(pattern: searchText, options: .caseInsensitive)
            
            for match in regex.matches(in: labelText, options: NSRegularExpression.MatchingOptions(rawValue: 0), range: NSRange(location: 0, length: labelText.utf16.count)) as [NSTextCheckingResult] {
                
                mutableString.setAttributes([NSAttributedString.Key.font:font, NSAttributedString.Key.backgroundColor: color], range: match.range)
            }
            self.attributedText = mutableString
        } catch {
            print(error)
        }
    }
}
