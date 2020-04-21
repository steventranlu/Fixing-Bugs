import UIKit
import AVFoundation

class ViewController: UIViewController {


    @IBOutlet weak var switchPlaySound: UISwitch!
    
    var audioPlayer: AVAudioPlayer!
    
    
    @IBAction func switchPlaySoundAction(_ sender: UISwitch) {
        if let playAudioPlayer = audioPlayer {
            if !switchPlaySound.isOn {
                playAudioPlayer.stop()
            }
        }
    }
    
    let arraySounds = ["Sound0"]
    
    
    func playSound(soundName:String){
        if let sound = NSDataAsset(name: soundName){
            do {
                try audioPlayer = AVAudioPlayer(data: sound.data)
                audioPlayer.play()
            }catch {
                print("ERROR: \(error.localizedDescription)")
            }
            }else {
                print("Error: Could not read data from song files")
            }
        }

    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        playSound(soundName: arraySounds[0])

    }


}

