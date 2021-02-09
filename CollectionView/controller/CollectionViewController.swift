//
//  HomeViewController.swift
//  CollectionView
//
//  Created by Boburmirzo on 2/9/21.
//

import UIKit

class CollectionViewController: UIViewController {

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
        
        let scroll = UIImage(named: "ic_scroll")
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: scroll, style: .plain, target: self, action: #selector(rightTapped))
        title="Collection View"
    }
    
    func callScrollController() {
        let vc:ScrollViewController = ScrollViewController(nibName: "ScrollViewController", bundle: nil)
        self.navigationController?.pushViewController(vc, animated: true)
    }

    
    // MARK: - Action
    
    @objc func rightTapped(){
        callScrollController()
    }
}
