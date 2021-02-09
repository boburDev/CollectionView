//
//  ScrollViewController.swift
//  CollectionView
//
//  Created by Boburmirzo on 2/10/21.
//

import UIKit

class ScrollViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        AppViews()
        // Do any additional setup after loading the view.
    }

    // MARK: - Method
    func AppViews() {
        navigationSettings()
    }
    
    func navigationSettings() {
        
        let back = UIImage(named: "ic_back")
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: back, style: .plain, target: self, action: #selector(leftTapped))
        title="Scroll View"
    }
    
    func callCollectionController() {
        self.navigationController?.popViewController(animated: true)
    }

    
    // MARK: - Action
    
    @objc func leftTapped(){
        callCollectionController()
    }

}
