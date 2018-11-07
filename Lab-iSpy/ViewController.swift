//
//  ViewController.swift
//  Lab-iSpy
//
//  Created by Charles Martin Reed on 11/7/18.
//  Copyright © 2018 Charles Martin Reed. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {

    //MARK:- @IBOutlets
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var imageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //set the view's delegate
        scrollView.delegate = self
        
        updateZoomFor(size: view.bounds.size)
        
    }
    
    //MARK:- delegate method
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return imageView
    }
    
    func updateZoomFor(size: CGSize) {
        //updates the zoom size of the image
        
        //use imageView and size parameter - screen bounds here - to calculate the scale
        let widthScale = size.width / imageView.bounds.width
        let heightScale = size.height / imageView.bounds.height
        let scale = min(widthScale, heightScale) //scaled by the smaller of these two amounts
        
        // set the minimumZoomScale prop of the scrollView to the derived scale
        scrollView.minimumZoomScale = scale
    }


}

