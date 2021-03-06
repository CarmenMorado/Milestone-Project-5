//
//  UILabelExtension.swift
//  Milestone Project 5
//
//  Created by Carmen Morado on 3/5/21.
//

import UIKit

extension UILabel {
  
    func highlight(searchText: String, color: UIColor = .blue) {
        guard let labelText = self.text else { return }
        do {
            let mutableString = NSMutableAttributedString(string: labelText)
            let regex = try NSRegularExpression(pattern: searchText, options: .caseInsensitive)
            
            for match in regex.matches(in: labelText, options: NSRegularExpression.MatchingOptions(rawValue: 0), range: NSRange(location: 0, length: labelText.utf16.count)) as [NSTextCheckingResult] {
                mutableString.addAttribute(NSAttributedString.Key.backgroundColor, value: color, range: match.range)
            }
            self.attributedText = mutableString
        } catch {
            print(error)
        }
    }
    
    func font(searchText: String, font: UIFont = .preferredFont(forTextStyle: UIFont.TextStyle(rawValue: "HoeflerText-Italic")), size: Int) {
        guard let labelText = self.text else { return }
        do {
            let mutableString = NSMutableAttributedString(string: labelText)
            let regex = try NSRegularExpression(pattern: searchText, options: .caseInsensitive)
            
            for match in regex.matches(in: labelText, options: NSRegularExpression.MatchingOptions(rawValue: 0), range: NSRange(location: 0, length: labelText.utf16.count)) as [NSTextCheckingResult] {
                mutableString.addAttribute(NSAttributedString.Key.font, value: font, range: match.range)
            }
            self.attributedText = mutableString
        } catch {
            print(error)
        }
    }
}
