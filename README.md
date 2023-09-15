# stopwatch<img width="1580" alt="스크린샷 2023-09-15 21 20 23" src="https://github.com/kimgyeoll/stopwatch/assets/105435276/90d4e794-333d-4848-9752-2d7a3fe68164">

func displayCurrentTime(seconds: Float) {
timeLabel.text = '\(Int(seconds) / 60 ):\(Int(seconds) % 60)" 
}
이걸 추가후 self?.displayCurrentTime(seconds: self?.currentTime ?? 0) 
한다면 사진과 같이 출력된다. 
