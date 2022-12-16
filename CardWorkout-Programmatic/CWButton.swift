//
//  CWButton.swift
//  CardWorkout-Programmatic
//
//  Created by Pablo Carmona Esparza on 12/14/22.
//

import UIKit

class CWButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(color: UIColor, title: String, systemImage: String) {
        super.init(frame: .zero)
        
        configuration                       = .tinted()
        configuration?.title                = title
        configuration?.baseForegroundColor  = color
        configuration?.baseBackgroundColor  = color
        configuration?.cornerStyle          = .medium
        
        configuration?.image                = UIImage(systemName: systemImage)
        configuration?.imagePadding         = 5
        configuration?.imagePlacement       = .leading
        
        translatesAutoresizingMaskIntoConstraints = false
    }
}
