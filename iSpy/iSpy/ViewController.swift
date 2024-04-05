//
//  ViewController.swift
//  iSpy
//
//  Created by Student on 03/04/24.
//

import UIKit

class ViewController: UIViewController ,UIScrollViewDelegate{

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var scrollView: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollView.delegate = self
        // Do any additional setup after loading the view.
    }
    func viewForZooming(in scrollView : UIScrollView) -> UIView?{
        return imageView
    }
    
    func updateZoomFor(size : CGSize)
    {
        let widthScale = size.width/imageView.bounds.width
        
        let heightScale = size.height/imageView.bounds.height
        
        let scale = min(widthScale,heightScale)
        scrollView.minimumZoomScale = scale
        scrollView.zoomScale = scale
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        updateZoomFor(size: view.bounds.size)
    }

}

