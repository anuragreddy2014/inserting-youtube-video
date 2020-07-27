//
//  ViewController.swift
//  youtubePlayerExample
//
//  Created by Anurag Reddy on 15/07/20.
//  Copyright © 2020 Anurag Reddy. All rights reserved.
//
import youtube_ios_player_helper
import UIKit

class ViewController: UIViewController,YTPlayerViewDelegate {
    @IBOutlet var playerView: YTPlayerView!
    override func viewDidLoad() {
        super.viewDidLoad()
        playerView.delegate = self
        playerView.load(withVideoId: "hMBKmQEPNzI",playerVars:["playsinline": 1])
        
    }
    func playerViewDidBecomeReady(_ playerView: YTPlayerView) {
        playerView.playVideo()
    }

}

