//
//  AccountSummaryHeaderView.swift
//  Bankey
//
//  Created by David Kochkin on 01.05.2023.
//

import UIKit

class AccountSummaryHeaderView: UIView {
    
    @IBOutlet var ContentView: UIView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    override var intrinsicContentSize: CGSize {
        return CGSize(width: UIView.noIntrinsicMetric, height: 144)
    }
    
    private func commonInit() {
        
        let bundle = Bundle(for: AccountSummaryHeaderView.self)
        bundle.loadNibNamed("AccountSummaryHeaderView", owner: self, options: nil)
        addSubview(ContentView)
        ContentView.backgroundColor = appColor
        
        ContentView.translatesAutoresizingMaskIntoConstraints = false
        ContentView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        ContentView.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        ContentView.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        ContentView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
    }
    
}
