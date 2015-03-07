//
//  ViewController.swift
//  Pitch Perfect
//
//  Created by Tom Seward on 3/6/15.
//  Copyright (c) 2015 Tom Seward. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var recordButton: UIButton!
    @IBOutlet weak var recordingInProgress: UILabel!
    @IBOutlet weak var showStopButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        showStopButton.hidden = true
        recordButton.enabled = true
    }

    @IBAction func recordAudio(sender: UIButton) {
        recordingInProgress.hidden = false
        showStopButton.hidden = false
        recordButton.enabled = false
        //TODO: Record the user's voice
        
    }

    @IBAction func stopRecording(sender: UIButton) {
        recordingInProgress.hidden = true
        showStopButton.hidden = true
    }
}

