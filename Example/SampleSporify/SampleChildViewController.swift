//
//  SampleChildViewController.swift
//  SampleSporify
//
//  Created by Emre Havan on 20.03.20.
//  Copyright © 2020 Emre Havan. All rights reserved.
//

import UIKit
import StickyTabBarViewController

class SampleChildViewController: UIViewController, Expandable {
    var minimisedView: UIView {
        return collapsedStateView
    }
    
    @IBOutlet weak var collapsedStateView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func shutDownTapped(_ sender: Any) {
        container?.removeCollapsableChild(animated: true)
    }
    @IBAction func collapseFromExpandedTapped(_ sender: Any) {
        container?.collapseChild()
    }
    @IBAction func updateMinimisedViewTapped(_ sender: Any) {
        collapsedStateView.backgroundColor = .red
    }
}
