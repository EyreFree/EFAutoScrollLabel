//
//  ViewController.swift
//  EFAutoScrollLabel
//
//  Created by EyreFree on 2017/3/7.
//
//  Copyright (c) 2017 EyreFree <eyrefree@eyrefree.org>
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.

import UIKit
import EFAutoScrollLabel
import SnapKit

class ViewController: UIViewController {

    let scrollView0 = EFAutoScrollLabel()
    let scrollView1 = EFAutoScrollLabel()
    let scrollView2 = EFAutoScrollLabel()
    let scrollView3 = EFAutoScrollLabel()

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = UIColor.white

        addControls()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        scrollView0.scrollLabelIfNeeded()
        scrollView1.scrollLabelIfNeeded()
        scrollView2.scrollLabelIfNeeded()
        scrollView3.scrollLabelIfNeeded()
    }

    func addControls() {
        // Short
        scrollView0.text = "Short."
        scrollView0.backgroundColor = UIColor(red: 253.0 / 255.0, green: 255.0 / 255.0, blue: 234.0 / 255.0, alpha: 1)
        scrollView0.textColor = UIColor(red: 249.0 / 255.0, green: 94.0 / 255.0, blue: 22.0 / 255.0, alpha: 1)
        scrollView0.font = UIFont.systemFont(ofSize: 13)
        scrollView0.labelSpacing = 30                       // Distance between start and end labels
        scrollView0.pauseInterval = 1.7                     // Seconds of pause before scrolling starts again
        scrollView0.scrollSpeed = 30                        // Pixels per second
        scrollView0.textAlignment = NSTextAlignment.left    // Centers text when no auto-scrolling is applied
        scrollView0.fadeLength = 12                         // Length of the left and right edge fade, 0 to disable
        scrollView0.scrollDirection = EFAutoScrollDirection.left
        scrollView0.isUserInteractionEnabled = false
        self.view.addSubview(scrollView0)
        scrollView0.snp.makeConstraints { (make) in
            make.top.equalTo(100)
            make.left.equalTo(10)
            make.right.equalTo(-10)
            make.height.equalTo(13)
        }

        // Long_1
        scrollView1.text = "当一个已经入门的开发者，想要成为一个更好的 iOS 开发者的时候，就会发现互联网的资料太琐碎，而且资料的好坏也难辨。"
        scrollView1.backgroundColor = UIColor(red: 114.0 / 255.0, green: 114.0 / 255.0, blue: 114.0 / 255.0, alpha: 1)
        scrollView1.textColor = UIColor.white
        scrollView1.font = UIFont.systemFont(ofSize: 13)
        scrollView1.labelSpacing = UIScreen.main.bounds.width
        scrollView1.pauseInterval = 1.7
        scrollView1.scrollSpeed = 30
        scrollView1.textAlignment = NSTextAlignment.left
        scrollView1.fadeLength = 12
        scrollView1.scrollDirection = EFAutoScrollDirection.left
        scrollView1.isUserInteractionEnabled = false
        self.view.addSubview(scrollView1)
        scrollView1.snp.makeConstraints { (make) in
            make.top.equalTo(140)
            make.left.equalTo(10)
            make.right.equalTo(-10)
            make.height.equalTo(13)
        }

        // Long_2
        scrollView2.text = "Long_2, Long_2, Long_2, Long_2, Long_2, Long_2, Long_2, Long_2, Long_2, Long_2, Long_2."
        scrollView2.backgroundColor = UIColor(red: 253.0 / 255.0, green: 255.0 / 255.0, blue: 234.0 / 255.0, alpha: 1)
        scrollView2.textColor = UIColor(red: 249.0 / 255.0, green: 94.0 / 255.0, blue: 22.0 / 255.0, alpha: 1)
        scrollView2.font = UIFont.systemFont(ofSize: 18)
        scrollView2.labelSpacing = UIScreen.main.bounds.width
        scrollView2.pauseInterval = 2.0
        scrollView2.scrollSpeed = 60
        scrollView2.textAlignment = NSTextAlignment.left
        scrollView2.fadeLength = 0
        scrollView2.scrollDirection = EFAutoScrollDirection.right
        scrollView2.isUserInteractionEnabled = false
        self.view.addSubview(scrollView2)
        scrollView2.snp.makeConstraints { (make) in
            make.top.equalTo(180)
            make.left.equalTo(10)
            make.right.equalTo(-10)
            make.height.equalTo(18)
        }

        // Long_3
        scrollView3.text = "当一个已经入门的开发者，想要成为一个更好的 iOS 开发者的时候，就会发现互联网的资料太琐碎，而且资料的好坏也难辨"
            + "。常常都会困惑我要如何提高自己，哪里有好的学习资料。"
        scrollView3.backgroundColor = UIColor(red: 114.0 / 255.0, green: 114.0 / 255.0, blue: 114.0 / 255.0, alpha: 1)
        scrollView3.textColor = UIColor.white
        scrollView3.font = UIFont.systemFont(ofSize: 18)
        scrollView3.labelSpacing = 30
        scrollView3.pauseInterval = 1.7
        scrollView3.scrollSpeed = 30
        scrollView3.textAlignment = NSTextAlignment.left
        scrollView3.fadeLength = 12
        scrollView3.scrollDirection = EFAutoScrollDirection.left
        scrollView3.isUserInteractionEnabled = false
        self.view.addSubview(scrollView3)
        scrollView3.snp.makeConstraints { (make) in
            make.top.equalTo(220)
            make.left.equalTo(10)
            make.right.equalTo(-10)
            make.height.equalTo(18)
        }
    }
}
