//
//  CollectionCell.swift
//  ZaraApp
//
//  Created by Temiloluwa on 02/01/2023.
//

import Foundation
import SwiftUI

class CollectionCell: UICollectionViewCell {
    
    static let reusedId: String = "CollectionCell"
    
    
    var viewController: UIViewController? {
        
        didSet {
            
            if let viewController = self.viewController {
                
                setUpCell(viewController)
            }
        }
    }
    
    override init(frame: CGRect) {
          super.init(frame: frame)
          if let viewController = self.viewController {
              setUpCell(viewController)
          }
      }
      required init?(coder: NSCoder) {
          super.init(coder: coder)
      }

    private func setUpCell(_ viewController: UIViewController) {
        
        
        guard let view = viewController.view else {
            
            return
        }
        
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .clear
        self.addSubview(view)
        
        
        NSLayoutConstraint.activate([
            
            view.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            view.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            view.topAnchor.constraint(equalTo: contentView.topAnchor),
            view.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)
            
            
        ])
    }
}
