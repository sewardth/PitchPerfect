//
//  PlaySoundsViewController.swift
//  Pitch Perfect
//
//  Created by Tom Seward on 3/7/15.
//  Copyright (c) 2015 Tom Seward. All rights reserved.
//

import UIKit
import AVFoundation

class PlaySoundsViewController: UIViewController {
    
    var audioPlayer:AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
      if  var filePath = NSBundle.mainBundle().pathForResource("movie_quote", ofType: "mp3")
    {
        var filePathUrl = NSURL.fileURLWithPath(filePath)
        audioPlayer = AVAudioPlayer(contentsOfURL: filePathUrl, error: nil)
    }
    
    else
      {
        println("the file path is empty")
    }
    
    
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func playSlow(sender: UIButton) {
        audioPlayer.play()
    }
}
